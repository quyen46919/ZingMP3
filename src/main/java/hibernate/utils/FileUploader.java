package hibernate.utils;

import java.io.File;
import java.nio.file.Path;

import org.springframework.web.multipart.MultipartFile;
import com.cloudinary.*;
import com.cloudinary.utils.ObjectUtils;

public class FileUploader {
	private MultipartFile file;
	private String defaultPath = "D:\\Quyen\\STUDY\\SpringMVC3\\ZingMp3\\src\\main\\webapp\\WEB-INF\\resources\\public\\video\\";
	
	Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
		"cloud_name", "dlq6za9et",
		"api_key", "242894341542833",
		"api_secret", "bIDL1whP3fydZRpXsYf4EMxM6Wc",
		"secure", true
	));

	public FileUploader(MultipartFile file) {
		this.file = file;
	}
	
	public String transfer(){
		try {
			String filePath = defaultPath + file.getOriginalFilename();
			file.transferTo(Path.of(filePath));
			String uploadResult = (String) cloudinary.uploader().upload(new File(filePath), null).get("secure_url");
			return uploadResult;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	public String transferAudio(){
		try {
			String filePath = defaultPath + file.getOriginalFilename();
			file.transferTo(Path.of(filePath));
			String uploadResult = (String) cloudinary.uploader().upload(new File(filePath), ObjectUtils.asMap(
				    "overwrite", true,
				    "resource_type", "video"         
				)).get("secure_url");
			return uploadResult;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
}
