package com.wngweiping.struts;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import java.io.File;

public class MultiUploadAction extends ActionSupport {
    private static final long serialVersionID = 1l;
    private File[] uploads;
    private String[] uploadsContentType;

    private String[] uploadsFileName;
    private String savePath;

    public String execute() throws Exception{
        //获取文件上传后保存的位置
        String realPath = getSavePath();
        //判断是否有文件需要上传
        if(uploads != null){
            File savePath = new File(realPath);
            //判断文件上传后保存的位置是否存在
            if (!savePath.exists()){
                savePath.mkdir();
            }
            //遍历待上传的文件
            for(int i=0;i<uploads.length;i++){
                File savaFile = new File(savePath,getUploadsFileName()[i]);
                FileUtils.copyFile(getUploads()[i],savaFile);
            }
            ActionContext.getContext().put("message","upload success!");

            return "success";
        }
        return "error";
    }


    public File[] getUploads() {
        return uploads;
    }

    public void setUploads(File[] uploads) {
        this.uploads = uploads;
    }

    public String[] getUploadsContentType() {
        return uploadsContentType;
    }

    public void setUploadsContentType(String[] uploadsContentType) {
        this.uploadsContentType = uploadsContentType;
    }

    public String[] getUploadsFileName() {
        return uploadsFileName;
    }

    public void setUploadsFileName(String[] uploadsFileName) {
        this.uploadsFileName = uploadsFileName;
    }

    /***
     * 返回文件存储位置
     * @return
     */
    public String getSavePath(){
        return ServletActionContext.getServletContext().getRealPath(savePath);
    }

    public void setSavePath(String savePath){
        this.savePath = savePath;
    }
}
