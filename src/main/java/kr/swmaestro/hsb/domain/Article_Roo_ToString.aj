// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package kr.swmaestro.hsb.domain;

import java.lang.String;

privileged aspect Article_Roo_ToString {
    
    public String Article.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("CommentList: ").append(getCommentList() == null ? "null" : getCommentList().size()).append(", ");
        sb.append("Content: ").append(getContent()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Subject: ").append(getSubject()).append(", ");
        sb.append("Title: ").append(getTitle()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("WriteDate: ").append(getWriteDate()).append(", ");
        sb.append("WriterUser: ").append(getWriterUser());
        return sb.toString();
    }
    
}
