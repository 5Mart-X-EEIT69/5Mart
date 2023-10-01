import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="AccountSetting_5Mart")
public class AccountSetting implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer settingId;

    private String preferredLanguage; // 希望的網頁語言
    private Boolean showRealName;     // 是否對外顯示真實姓名

    @OneToOne()
    @JoinColumn(name = "member_id")
    private member member; // 對應的 member

    // getters and setters
}
