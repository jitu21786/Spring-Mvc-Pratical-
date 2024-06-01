package fileUploading;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

@Controller
public class Controller1 {
	@RequestMapping("/fileUpload")
	public String fileUploadSystem() {
		return "FileUpload";
	}

	@RequestMapping(path = "/uploading", method = RequestMethod.POST)
	public String uploading(@RequestParam("profile") CommonsMultipartFile file, HttpSession req, Model model) throws IOException
			 {
		System.out.println(file.getName());
		System.out.println(file.getContentType());
		System.out.println(file.getOriginalFilename());

		// now get the folder location
		String path = req.getServletContext().getRealPath("/");
		String fileType = file.getContentType();
		String newPath;

		// Determine the correct path based on the file type
		if (fileType.startsWith("image/")) {
			newPath = path + "WEB-INF" + File.separator + "resources" + File.separator + "images" + File.separator
					+ file.getOriginalFilename();
		} else if (fileType.startsWith("video/")) {
			newPath = path + "WEB-INF" + File.separator + "resources" + File.separator
					+ "videos" + File.separator
					+ file.getOriginalFilename();
		} else {
			// Handle other file types or reject them
			throw new IOException("Unsupported file type: " + fileType);
		}

		System.out.println("Saving file to: " + newPath);
		byte[] b = file.getBytes();

		try (FileOutputStream fos = new FileOutputStream(newPath)) {
			fos.write(b);
			//fos.close();
		}

		model.addAttribute("fileName", file.getOriginalFilename());
		return "success"; // Adjust the return value to match your application's flow
	}

}
