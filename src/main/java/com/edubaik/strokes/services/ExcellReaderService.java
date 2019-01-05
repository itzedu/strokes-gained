package com.edubaik.strokes.services;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Iterator;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellValue;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edubaik.strokes.models.Shot;
import com.edubaik.strokes.repositories.ShotRepository;

@Service
public class ExcellReaderService {
	@Autowired 
	private ShotRepository shotRepo;

	public void createShots() throws IOException {
		File excelFile = new File("/Users/eduardobaik/Desktop/strokes-gained/strokes-gained/pgastrokes.xlsx");
		FileInputStream fis = new FileInputStream(excelFile);

	    // we create an XSSF Workbook object for our XLSX Excel File
	    XSSFWorkbook workbook = new XSSFWorkbook(fis);
	    // we get first sheet
	    XSSFSheet sheet = workbook.getSheetAt(0);
	    
	    // we iterate on rows
	    Iterator<Row> rowIt = sheet.iterator();
	    FormulaEvaluator evaluator = workbook.getCreationHelper().createFormulaEvaluator();
	    rowIt.next();
	    
	    while(rowIt.hasNext()) {
	    	Row row = rowIt.next();
	    	Shot currentShot = new Shot();

	    	// iterate on cells for the current row
	    	Iterator<Cell> cellIterator = row.cellIterator();
	      
	    	for(int i = 0; i < 2; i++) {
	    		Cell cell = cellIterator.next();
	        
	    		CellValue cellValue = evaluator.evaluate(cell);

	    		switch(cellValue.getCellType()) {
	            	case NUMERIC:
	            		DecimalFormat df = new DecimalFormat("#.####");
	            		Double pgaStroke = Double.valueOf(df.format(cellValue.getNumberValue()));
	            		currentShot.setPgaStroke(pgaStroke);
	            		break;
	            	case STRING:
	            		String shotType = cellValue.getStringValue();
	            		
	            		
	            		switch(shotType.substring(0, 1)) {
	            			case "T":
	            				currentShot.setType("Tee");
	            				break;
	            			case "F":
	            				currentShot.setType("Fairway");
	            				break;
	            			case "R":
	    	            		if(shotType.substring(1,2).equals("C")) {	    	            			
	    	            			currentShot.setType("Recovery");
	    	            		} else {
	    	            			currentShot.setType("Rough");
	    	            		}
	            				break;
	            			case "S":
	            				currentShot.setType("Sand");
	            				break;
	            			case "RC":
	            				currentShot.setType("Recovery");
	            				break;	    
	            			case "G":
	            				currentShot.setType("Green");
	            				break;	            				
	            		}
	            		
	            		Integer yardage;
	            		if(shotType.substring(1,2).equals("C")) {	            			
	            			yardage = Integer.valueOf(shotType.substring(2));
	            		} else {
	            			yardage = Integer.valueOf(shotType.substring(1));
	            		}
	            		currentShot.setDistance(yardage);
	            		break;
	    		}
	    	}
	    	System.out.println(currentShot.getType());
	    	System.out.println(currentShot.getDistance());
	    	System.out.println(currentShot.getPgaStroke());
	    	System.out.println("-------------------------");
	    	shotRepo.save(currentShot);	
	    }

	    workbook.close();
	    fis.close();
	}
}
