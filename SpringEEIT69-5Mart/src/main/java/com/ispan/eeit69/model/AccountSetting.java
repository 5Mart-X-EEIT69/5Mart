package com.ispan.eeit69.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.LinkedHashSet;
import java.util.Set;

import org.springframework.web.multipart.MultipartFile;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.OrderBy;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;


@Entity
public class AccountSetting {
    @Id
    private Long id;
    private Integer uid;
    private boolean isInfoPublic; // 是否對外公開資訊
    // ... 其他設定

    @OneToOne(mappedBy = "setting")
    private member member;
}

//    @OneToOne(cascade = CascadeType.ALL)
//    @JoinColumn(name = "setting_id", referencedColumnName = "id")
//    private AccountSetting setting;
//}



