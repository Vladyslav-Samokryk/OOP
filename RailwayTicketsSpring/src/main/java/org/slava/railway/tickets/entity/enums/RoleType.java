package org.slava.railway.tickets.entity.enums;

import org.springframework.security.core.GrantedAuthority;

public enum RoleType implements GrantedAuthority {
    ROLE_GUEST,
    ROLE_USER,
    ROLE_ADMIN;

    RoleType() {
    }

    @Override
    public String getAuthority() {
        return name();
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
