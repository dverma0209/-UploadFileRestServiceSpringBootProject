package com.rw.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
 
@RestController
public class FileUploadController {
 
	String UPLOAD_DIRECTORY = "C://temp//";
	
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public @ResponseBody String performFileUpload(@RequestParam(value = "file") MultipartFile file) throws IOException {
		
		String fileExtension = getFileExtension(file);
		
		String filename = "TestUploadedFile_" + System.currentTimeMillis();
 
		File targetFile = getTargetFile(filename,fileExtension);
 
		file.transferTo(targetFile);
 
		return filename;
}	
	
	private File getTargetFile(String fileName, String fileExtension) {
		File targetFile = new File(UPLOAD_DIRECTORY + fileName + fileExtension);
		return targetFile;
	}
 
	private String getFileExtension(MultipartFile fileToUpload) {
		String fileExtention = fileToUpload.getOriginalFilename().substring(fileToUpload.getOriginalFilename().lastIndexOf('.'));
		return fileExtention;
	}
	
 
}