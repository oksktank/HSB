// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package kr.swmaestro.hsb.domain;

import java.lang.String;

privileged aspect Comment_Roo_ToString {
    
    public String Comment.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Article: ").append(getArticle()).append(", ");
        sb.append("Content: ").append(getContent()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("WriteDate: ").append(getWriteDate()).append(", ");
        sb.append("WriterUser: ").append(getWriterUser());
        return sb.toString();
    }
    
}
