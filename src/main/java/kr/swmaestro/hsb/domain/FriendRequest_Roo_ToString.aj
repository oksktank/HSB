// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package kr.swmaestro.hsb.domain;

import java.lang.String;

privileged aspect FriendRequest_Roo_ToString {
    
    public String FriendRequest.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("RequestDate: ").append(getRequestDate()).append(", ");
        sb.append("RequestUser: ").append(getRequestUser()).append(", ");
        sb.append("TargetUser: ").append(getTargetUser()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}