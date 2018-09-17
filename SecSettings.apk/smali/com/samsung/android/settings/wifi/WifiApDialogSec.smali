.class public Lcom/samsung/android/settings/wifi/WifiApDialogSec;
.super Landroid/app/AlertDialog;
.source "WifiApDialogSec.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;,
        Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;,
        Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;,
        Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;,
        Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mSecurityTypeIndex:I

.field public static mSelectedChannel:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private CheckBoxChannel2g:Landroid/widget/RadioButton;

.field private CheckBoxChannel5g:Landroid/widget/RadioButton;

.field private CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

.field private advanced:Landroid/widget/CheckBox;

.field private bTimeOutSpinner:Z

.field private customView:Landroid/view/View;

.field private focusListener:Landroid/view/View$OnFocusChangeListener;

.field private hideSsidDoNotShowAgain:Z

.field private isPMFEnabled:Z

.field private isPowerSaveEnabled:Z

.field private isTimeoutValueChanged:Z

.field private mAdvancedShowLayout:Landroid/widget/LinearLayout;

.field private mBand2gTextView:Landroid/widget/TextView;

.field private mChannel:Landroid/widget/Spinner;

.field private mChannel2gLayout:Landroid/widget/LinearLayout;

.field private mChannel5g:Landroid/widget/TextView;

.field private mChannel5gLayout:Landroid/widget/LinearLayout;

.field private mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

.field private mChannel5genabled:Z

.field private mChannelBroadcast:Landroid/widget/TextView;

.field public mChecked5GPrefer:Z

.field private mConfigureTitleTV:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field public mDismissIfOpen:Z

.field private mHideSsid:Landroid/widget/CheckBox;

.field private mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

.field private mHideSsidDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mLast2gChannel:I

.field private mLast5gChannel:I

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMacaddrAcl:I

.field private mNumBasedOnCharger:I

.field private mNumBasedOnCountry:I

.field private mPMFCheckBox:Landroid/widget/CheckBox;

.field private mPMFLayout:Landroid/widget/LinearLayout;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordErrorText:Landroid/widget/TextView;

.field private mPasswordShowLayout:Landroid/widget/LinearLayout;

.field private mPowerSaveCheckBox:Landroid/widget/CheckBox;

.field private mPowerSaveLayout:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveButtonClicked:Z

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityMsg:Landroid/widget/TextView;

.field private mSelectedBand:I

.field private mSelectedMaxClient:I

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsid:Landroid/widget/EditText;

.field private mSsidErrorText:Landroid/widget/TextView;

.field private mSsidHideLayout:Landroid/widget/LinearLayout;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSecurityTypeIndex:I

.field private mTempSsid:Ljava/lang/String;

.field private mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mUserSelectOpenSecurity:Z

.field private mView:Landroid/view/View;

.field private mWifiAp5gDoNotShowAgain:Landroid/widget/CheckBox;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private maxClientSpinner:Landroid/widget/Spinner;

.field private passwordWatcher:Landroid/text/TextWatcher;

.field private ssidWatcher:Landroid/text/TextWatcher;

.field private timeoutSettingsSpinner:Landroid/widget/Spinner;

.field private wifiAp5gDoNotShowAgain:Z

.field private wifiAp5gItem:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCountry:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiAp5gDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiAp5gDoNotShowAgain:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/wifi/WifiApDialogSec;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getChgType()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->DBG:Z

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .registers 11

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/16 v6, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gDoNotShowAgain:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5genabled:Z

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v4, "36"

    aput-object v4, v1, v3

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v4, "149"

    aput-object v4, v1, v3

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPowerSaveEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->ssidWatcher:Landroid/text/TextWatcher;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-static {p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p3, :cond_1e4

    invoke-static {p1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_78

    invoke-static {p3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    :cond_78
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    if-nez v1, :cond_80

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-eqz v1, :cond_1e5

    :cond_80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_ap_last_2g_channel"

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :cond_8d
    :goto_8d
    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    if-ne v1, v5, :cond_a1

    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-ltz v1, :cond_201

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-gt v1, v6, :cond_201

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :cond_a1
    :goto_a1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_ap_5G_checked"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " before mSelectedChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mLast2gChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mLast5gChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " 5g_checked:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    if-le v1, v6, :cond_125

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/16 v4, 0x95

    if-ne v1, v4, :cond_105

    const/16 v1, 0x95

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_ap_5G_checked"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_105
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    sput v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const-string/jumbo v1, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Changing MHS Channel to Auto "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_125
    const-string/jumbo v1, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSelectedChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mLast2gChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mLast5gChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v1, :cond_16d

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    :cond_16d
    const-string/jumbo v1, "TMO"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_183

    const-string/jumbo v1, "NEWCO"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18d

    :cond_183
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    :cond_18d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_ap_pmf_checked"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_21d

    move v1, v2

    :goto_19b
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    const-string/jumbo v1, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requirePMF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_ap_powersave_mode_checked"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_220

    :goto_1c6
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPowerSaveEnabled:Z

    const-string/jumbo v1, "WifiApDialogSec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPowerSaveEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPowerSaveEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e4
    return-void

    :cond_1e5
    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ltz v1, :cond_1f5

    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-gt v1, v6, :cond_1f5

    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :cond_1f5
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v4, 0xe

    if-le v1, v4, :cond_8d

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_8d

    :cond_201
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v4, 0xe

    if-le v1, v4, :cond_20d

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_a1

    :cond_20d
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-le v1, v6, :cond_a1

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v4, 0xf

    if-gt v1, v4, :cond_a1

    sput v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    goto/16 :goto_a1

    :cond_21d
    move v1, v3

    goto/16 :goto_19b

    :cond_220
    move v2, v3

    goto :goto_1c6
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V
    .registers 15

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/16 v6, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gDoNotShowAgain:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5genabled:Z

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v4, "36"

    aput-object v4, v1, v3

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v4, "149"

    aput-object v4, v1, v3

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPowerSaveEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->ssidWatcher:Landroid/text/TextWatcher;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-static {p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p4, :cond_21d

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :goto_6c
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_21c

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const-string/jumbo v1, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiApDialogSec2 - mSecurityTypeIndex ?  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   permitDismiss ?   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   continueOpen ?   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    if-eqz p6, :cond_221

    sput v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    :cond_b0
    :goto_b0
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    if-nez v1, :cond_b8

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-eqz v1, :cond_229

    :cond_b8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_ap_last_2g_channel"

    invoke-static {v1, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :cond_c5
    :goto_c5
    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    if-ne v1, v7, :cond_d9

    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-ltz v1, :cond_245

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-gt v1, v6, :cond_245

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :cond_d9
    :goto_d9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_ap_5G_checked"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " before mSelectedChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mLast2gChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mLast5gChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " 5g_checked:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    if-le v1, v6, :cond_15d

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/16 v4, 0x95

    if-ne v1, v4, :cond_13d

    const/16 v1, 0x95

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_ap_5G_checked"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_13d
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    sput v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const-string/jumbo v1, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Changing MHS Channel to Auto "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15d
    const-string/jumbo v1, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSelectedChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mLast2gChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mLast5gChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v1, :cond_1a5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    :cond_1a5
    const-string/jumbo v1, "TMO"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bb

    const-string/jumbo v1, "NEWCO"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    :cond_1bb
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    :cond_1c5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_ap_pmf_checked"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_261

    move v1, v2

    :goto_1d3
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    const-string/jumbo v1, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requirePMF..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_ap_powersave_mode_checked"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_264

    :goto_1fe
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPowerSaveEnabled:Z

    const-string/jumbo v1, "WifiApDialogSec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPowerSaveEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPowerSaveEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21c
    return-void

    :cond_21d
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_6c

    :cond_221
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v1, :cond_b0

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    goto/16 :goto_b0

    :cond_229
    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ltz v1, :cond_239

    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-gt v1, v6, :cond_239

    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :cond_239
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v4, 0xe

    if-le v1, v4, :cond_c5

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_c5

    :cond_245
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v4, 0xe

    if-le v1, v4, :cond_251

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_d9

    :cond_251
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-le v1, v6, :cond_d9

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v4, 0xf

    if-gt v1, v4, :cond_d9

    sput v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    goto/16 :goto_d9

    :cond_261
    move v1, v3

    goto/16 :goto_1d3

    :cond_264
    move v2, v3

    goto :goto_1fe
.end method

.method private checkMaxFontSize(Landroid/widget/TextView;)V
    .registers 12

    const/4 v9, 0x0

    const v8, 0x3f99999a    # 1.2f

    const v3, 0x3f99999a    # 1.2f

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v1, v5, Landroid/content/res/Configuration;->fontScale:F

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1110082

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v2, 0x0

    iget v5, v4, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    if-eqz v2, :cond_3c

    cmpl-float v5, v1, v8

    if-lez v5, :cond_3c

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    div-float v0, v5, v1

    mul-float v5, v0, v8

    invoke-virtual {p1, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3c
    return-void
.end method

.method private getChgType()Z
    .registers 9

    const-string/jumbo v0, "/sys/class/sec/switch/chg_type"

    const/4 v1, 0x0

    const-string/jumbo v3, ""

    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_4e
    .catchall {:try_start_7 .. :try_end_11} :catchall_5d

    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "WifiApDialogSec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ChgType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2f} :catch_6e
    .catchall {:try_start_11 .. :try_end_2f} :catchall_6b

    if-eqz v2, :cond_34

    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_49

    :cond_34
    :goto_34
    move-object v1, v2

    :cond_35
    :goto_35
    const-string/jumbo v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    const-string/jumbo v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    :cond_47
    const/4 v5, 0x1

    return v5

    :catch_49
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    :catch_4e
    move-exception v4

    :goto_4f
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5d

    if-eqz v1, :cond_35

    :try_start_54
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_35

    :catch_58
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    :catchall_5d
    move-exception v5

    :goto_5e
    if-eqz v1, :cond_63

    :try_start_60
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    :cond_63
    :goto_63
    throw v5

    :catch_64
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    :cond_69
    const/4 v5, 0x0

    return v5

    :catchall_6b
    move-exception v5

    move-object v1, v2

    goto :goto_5e

    :catch_6e
    move-exception v4

    move-object v1, v2

    goto :goto_4f
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .registers 5

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_e

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    return v1

    :cond_e
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    sput v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    return v3

    :cond_1a
    sput v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    return v2
.end method

.method private getTimeoutIndexFromValue(I)I
    .registers 3

    sparse-switch p1, :sswitch_data_12

    const/4 v0, -0x1

    return v0

    :sswitch_5
    const/4 v0, 0x0

    return v0

    :sswitch_7
    const/4 v0, 0x1

    return v0

    :sswitch_9
    const/4 v0, 0x2

    return v0

    :sswitch_b
    const/4 v0, 0x3

    return v0

    :sswitch_d
    const/4 v0, 0x4

    return v0

    :sswitch_f
    const/4 v0, 0x5

    return v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_5
        0x12c -> :sswitch_7
        0x258 -> :sswitch_9
        0x4b0 -> :sswitch_b
        0x708 -> :sswitch_d
        0xe10 -> :sswitch_f
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .registers 3

    const/16 v0, 0x4b0

    packed-switch p1, :pswitch_data_16

    return v0

    :pswitch_6
    const/4 v0, 0x0

    return v0

    :pswitch_8
    const/16 v0, 0x12c

    return v0

    :pswitch_b
    const/16 v0, 0x258

    return v0

    :pswitch_e
    return v0

    :pswitch_f
    const/16 v0, 0x708

    return v0

    :pswitch_12
    const/16 v0, 0xe10

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .registers 5

    const-string/jumbo v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isHotspotTestMode()Z
    .registers 15

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    const/16 v11, 0xbf

    iput v11, v7, Landroid/os/Message;->what:I

    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v11

    if-ne v11, v10, :cond_82

    const/4 v8, 0x1

    :goto_1e
    sget-boolean v11, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->DBG:Z

    if-eqz v11, :cond_7f

    const-string/jumbo v0, "/data/misc/wifi/hotspot_info"

    const/4 v1, 0x0

    const-string/jumbo v3, ""

    :try_start_29
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_33} :catch_a7
    .catchall {:try_start_29 .. :try_end_33} :catchall_96

    :cond_33
    :goto_33
    :try_start_33
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_86

    const-string/jumbo v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v11, v5

    const/4 v12, 0x2

    if-lt v11, v12, :cond_33

    const-string/jumbo v11, "ATT_HOTSPOT"

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_33

    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_84

    const/4 v6, 0x1

    :goto_5a
    const-string/jumbo v11, "WifiApDialogSec"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ATT_HOTSPOT ? "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_74} :catch_75
    .catchall {:try_start_33 .. :try_end_74} :catchall_a4

    goto :goto_33

    :catch_75
    move-exception v4

    move-object v1, v2

    :goto_77
    :try_start_77
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_96

    if-eqz v1, :cond_7f

    :try_start_7c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_91

    :cond_7f
    :goto_7f
    if-nez v6, :cond_a2

    :goto_81
    return v8

    :cond_82
    const/4 v8, 0x0

    goto :goto_1e

    :cond_84
    const/4 v6, 0x0

    goto :goto_5a

    :cond_86
    if-eqz v2, :cond_7f

    :try_start_88
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_7f

    :catch_8c
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7f

    :catch_91
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7f

    :catchall_96
    move-exception v10

    :goto_97
    if-eqz v1, :cond_9c

    :try_start_99
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    :cond_9c
    :goto_9c
    throw v10

    :catch_9d
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9c

    :cond_a2
    move v8, v10

    goto :goto_81

    :catchall_a4
    move-exception v10

    move-object v1, v2

    goto :goto_97

    :catch_a7
    move-exception v4

    goto :goto_77
.end method

.method private isWifiSharingEnabled()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_12

    return v4

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_1e} :catch_22

    move-result v1

    if-nez v1, :cond_2c

    return v3

    :catch_22
    move-exception v0

    const-string/jumbo v1, "WifiApDialogSec"

    const-string/jumbo v2, "Wifi Sharing not defined"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return v3
.end method

.method private restartFocusedViewInput()V
    .registers 3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_11
    :goto_11
    return-void

    :cond_12
    if-nez v0, :cond_1e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_11

    :cond_1e
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_30
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->restartViewInput(Landroid/view/View;)V

    goto :goto_11
.end method

.method private restartViewInput(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method private saveTempConfig()V
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string/jumbo v2, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string/jumbo v2, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string/jumbo v2, "USC"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    :cond_34
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_3e
    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_52
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v2, :cond_5c

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_5c
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_a4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a4

    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    :goto_6a
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_ap_pmf_checked"

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v2, :cond_a7

    move v2, v3

    :goto_78
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveCheckBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_a9

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a9

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_ap_powersave_mode_checked"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_93
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_fc

    :cond_98
    :goto_98
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void

    :cond_9b
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_3e

    :cond_a4
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    goto :goto_6a

    :cond_a7
    move v2, v4

    goto :goto_78

    :cond_a9
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_ap_powersave_mode_checked"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_93

    :pswitch_b6
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_98

    :pswitch_bc
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_98

    :pswitch_db
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_98

    nop

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_bc
        :pswitch_db
    .end packed-switch
.end method

.method private setAdapterToSpinner(Landroid/widget/Spinner;I)V
    .registers 7

    const-string/jumbo v1, "WifiApDialogSec"

    const-string/jumbo v2, "Enter to setAdapterToSpinner"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d038f

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setTimeout(I)V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "SAMSUNG_HOTSPOT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showSecurityFields()V
    .registers 7

    const v5, 0x7f0a032a

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f0a0776

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityMsg:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_41
    return-void

    :cond_42
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_63
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_94

    const/16 v1, 0x90

    :goto_76
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    return-void

    :cond_94
    const/16 v1, 0x80

    goto :goto_76
.end method

.method private validate()V
    .registers 13

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isWifiApSettingUserModificationAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isOpenWifiApAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v8, :cond_46

    :try_start_2b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isWifiApSettingUserModificationAllowed"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_c4

    move-result v0

    if-eqz v0, :cond_43

    const/4 v7, 0x0

    :cond_43
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_46
    if-eqz v9, :cond_67

    :try_start_48
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v0, :cond_64

    const-string/jumbo v0, "isOpenWifiApAllowed"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_48 .. :try_end_60} :catchall_c9

    move-result v0

    if-eqz v0, :cond_64

    const/4 v7, 0x0

    :cond_64
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_67
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_87

    if-nez v11, :cond_88

    :cond_87
    const/4 v7, 0x0

    :cond_88
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    :cond_9e
    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a8

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b9

    :cond_a8
    if-eqz v10, :cond_b8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_b9

    :cond_b8
    const/4 v7, 0x0

    :cond_b9
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_c3

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_c3
    return-void

    :catchall_c4
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_c9
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public dismissSpinnerPopup()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_33
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_44
    return-void
.end method

.method public getCheckShowPassword()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .registers 9

    const/16 v6, 0x95

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string/jumbo v2, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string/jumbo v2, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string/jumbo v2, "USC"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    :cond_37
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_41
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    if-eqz v2, :cond_119

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    :goto_47
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ne v2, v6, :cond_129

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :goto_4d
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v2, :cond_5b

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_5b
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_12d

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_12d

    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    :goto_69
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_ap_pmf_checked"

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v2, :cond_131

    move v2, v3

    :goto_77
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveCheckBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_134

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_134

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_ap_powersave_mode_checked"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_92
    const-string/jumbo v2, "WifiApDialogSec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getConfig() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_188

    return-object v7

    :cond_10f
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_41

    :cond_119
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    if-eqz v2, :cond_123

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    goto/16 :goto_47

    :cond_123
    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    goto/16 :goto_47

    :cond_129
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    goto/16 :goto_4d

    :cond_12d
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    goto/16 :goto_69

    :cond_131
    move v2, v4

    goto/16 :goto_77

    :cond_134
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_ap_powersave_mode_checked"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_92

    :pswitch_142
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    return-object v0

    :pswitch_148
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_166

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_166
    return-object v0

    :pswitch_167
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_186

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_186
    return-object v0

    nop

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_142
        :pswitch_148
        :pswitch_167
    .end packed-switch
.end method

.method public getOpenWarningFlag()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    return v0
.end method

.method public getTempConfig()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getTimeoutValueChangedFlag()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    return v0
.end method

.method public isSaveButtonClicked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v1, 0x7f0a0772

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    :cond_25
    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_5c

    :goto_2a
    return-void

    :pswitch_2b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2a

    :pswitch_32
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2a

    :pswitch_47
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2a

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_32
        :pswitch_47
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 16

    const v12, 0x7f12179f

    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v9, "WifiApDialogSec"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onCheckedChanged, isChecked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_23e

    :cond_28
    :goto_28
    return-void

    :sswitch_29
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v6

    if-eqz v6, :cond_51

    const/16 v6, 0x90

    :goto_33
    or-int/lit8 v6, v6, 0x1

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->invalidate()V

    goto :goto_28

    :cond_51
    const/16 v6, 0x80

    goto :goto_33

    :sswitch_54
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v9

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9b

    move v6, v7

    :goto_63
    int-to-long v10, v6

    const v6, 0x7f120a3a

    invoke-virtual {v9, v12, v6, v10, v11}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    const-string/jumbo v6, "TMO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_80

    const-string/jumbo v6, "NEWCO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    :cond_80
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9d

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v9, 0x7f121f04

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_28

    :cond_9b
    move v6, v8

    goto :goto_63

    :cond_9d
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "SAMSUNG_HOTSPOT"

    invoke-virtual {v6, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "HIDE_SSID_DO_NOTSHOW_AGAIN"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_da

    :goto_b3
    iput-boolean v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    const-string/jumbo v6, "WifiApDialogSec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hideSsidDoNotShowAgain = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    if-nez v6, :cond_28

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showHideSsidWarningDialog()V

    goto/16 :goto_28

    :cond_da
    move v8, v7

    goto :goto_b3

    :sswitch_dc
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_eb

    move v8, v7

    :cond_eb
    int-to-long v10, v8

    const v8, 0x7f120a41

    invoke-virtual {v9, v12, v8, v10, v11}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v9, 0x7f0a0065

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_104

    move v6, v7

    :cond_104
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_12f

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v8, "input_method"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_28

    :cond_12f
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->restartFocusedViewInput()V

    goto/16 :goto_28

    :sswitch_134
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_13d

    move v8, v7

    :cond_13d
    iput v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    if-eqz v2, :cond_157

    move v8, v7

    :goto_144
    invoke-virtual {v9, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    if-eqz v2, :cond_159

    :goto_14b
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    xor-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_28

    :cond_157
    move v8, v6

    goto :goto_144

    :cond_159
    move v6, v7

    goto :goto_14b

    :sswitch_15b
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_18e

    :goto_163
    iput v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    if-eqz v3, :cond_190

    move v8, v6

    :goto_16a
    invoke-virtual {v9, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    if-eqz v3, :cond_192

    :goto_171
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    xor-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v6, :cond_28

    const-string/jumbo v6, "149"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_28

    :cond_18e
    move v8, v7

    goto :goto_163

    :cond_190
    move v8, v7

    goto :goto_16a

    :cond_192
    move v7, v6

    goto :goto_171

    :sswitch_194
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v6

    if-eqz v4, :cond_1a3

    move v8, v7

    :cond_1a3
    int-to-long v8, v8

    const v10, 0x7f120a37

    invoke-virtual {v6, v12, v10, v8, v9}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    sget-boolean v6, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    if-eqz v6, :cond_1b2

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    goto/16 :goto_28

    :cond_1b2
    if-eqz v4, :cond_1c3

    const-string/jumbo v6, "149"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_28

    :cond_1c3
    sput v7, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    goto/16 :goto_28

    :sswitch_1cb
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_202

    :goto_1d9
    int-to-long v8, v7

    const v7, 0x7f120a3d

    invoke-virtual {v6, v12, v7, v8, v9}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    const-string/jumbo v6, "WifiApDialogSec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isPMFChecked.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :cond_202
    move v7, v8

    goto :goto_1d9

    :sswitch_204
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_23b

    :goto_212
    int-to-long v8, v7

    const v7, 0x7f120a3e

    invoke-virtual {v6, v12, v7, v8, v9}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    const-string/jumbo v6, "WifiApDialogSec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isPowerSaveEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :cond_23b
    move v7, v8

    goto :goto_212

    nop

    :sswitch_data_23e
    .sparse-switch
        0x7f0a0173 -> :sswitch_134
        0x7f0a0174 -> :sswitch_15b
        0x7f0a0175 -> :sswitch_194
        0x7f0a0176 -> :sswitch_1cb
        0x7f0a0177 -> :sswitch_204
        0x7f0a03d4 -> :sswitch_54
        0x7f0a07ae -> :sswitch_dc
        0x7f0a07b3 -> :sswitch_29
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0d0383

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0d0384

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mCustomTitleView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mCustomTitleView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0982

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f060299

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a077d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const v18, 0x7f03012f

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0772

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setView(Landroid/view/View;)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setInverseBackgroundForced(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->sSalesCode:Ljava/lang/String;

    new-instance v13, Lcom/android/settings/Utils$LengthFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a08fa

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0806

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0807

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidErrorText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const v18, 0x7f122179

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setHint(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0613

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0618

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordErrorText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a03d5

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidHideLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidHideLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a03d4

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f121f02

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidHideLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a07b5

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordShowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordShowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a07af

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mAdvancedShowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mAdvancedShowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a098d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0176

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f121f7f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a098e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0177

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f121f81

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPowerSaveEnabled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a07ae

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0977

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const v18, 0x7f03012b

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0978

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel2gLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a097b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a097a

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0173

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RadioButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0174

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RadioButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0175

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0979

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a08ab

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mBand2gTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a097c

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    sget-boolean v17, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    if-eqz v17, :cond_746

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v19, "wifi_ap_5G_checked"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_724

    const/16 v17, 0x1

    :goto_453
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isWifiSharingEnabled()Z

    move-result v17

    if-nez v17, :cond_728

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mBand2gTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_490
    :goto_490
    const v17, 0x7f1220f8

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v17, 0x7f121ffc

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    const/16 v19, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5c5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_92f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_92f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f121efe

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setCustomTitle(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->checkMaxFontSize(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    const-string/jumbo v17, "TMO"

    sget-object v18, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_559

    const-string/jumbo v17, "NEWCO"

    sget-object v18, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_559

    const-string/jumbo v17, "USC"

    sget-object v18, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_947

    :cond_559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v18, v0

    xor-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_570
    sget v17, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_95e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_585
    sget v17, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_599

    sget v17, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5c5

    :cond_599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_96b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_96b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->requestFocus()Z

    :cond_5c5
    :goto_5c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/Utils$EmojiInputFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/Utils$EmojiInputFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->passwordWatcher:Landroid/text/TextWatcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a07b3

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-boolean v17, Lcom/android/settings/Utils;->ENABLE_SHOW_PASSWORD_AS_DEFAULT:Z

    if-eqz v17, :cond_982

    const/4 v9, 0x1

    :goto_653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a07b3

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "wifi_ap_show_passwd"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_985

    const/16 v18, 0x1

    :goto_67b
    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a098b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    sget-boolean v17, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v17, :cond_b30

    const-string/jumbo v17, "SPRINT"

    sget-object v18, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a85

    sget v6, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v17, "phone"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v15

    if-eqz v15, :cond_70e

    :try_start_6d9
    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_989

    const-string/jumbo v17, "chameleon_gsmmaxuser"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v17, "WifiApDialogSec"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "GSMMAXUSER, changeableMaxvalue = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70e
    .catch Landroid/os/RemoteException; {:try_start_6d9 .. :try_end_70e} :catch_999
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6d9 .. :try_end_70e} :catch_994

    :cond_70e
    :goto_70e
    if-lez v6, :cond_9c3

    new-array v14, v6, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_713
    if-ge v12, v6, :cond_99e

    add-int/lit8 v17, v12, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_713

    :cond_724
    const/16 v17, 0x0

    goto/16 :goto_453

    :cond_728
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isWifiSharingEnabled()Z

    move-result v17

    if-eqz v17, :cond_490

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_490

    :cond_746
    sget-boolean v17, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-eqz v17, :cond_79e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isWifiSharingEnabled()Z

    move-result v17

    if-eqz v17, :cond_79e

    const-string/jumbo v17, "WifiApDialogSec"

    const-string/jumbo v18, "Making band and channel selection invisible "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setVisibility(I)V

    sget v17, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_791

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_490

    :cond_791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_490

    :cond_79e
    sget-boolean v17, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_7cb

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isWifiSharingEnabled()Z

    move-result v17

    if-eqz v17, :cond_7cb

    const-string/jumbo v17, "WifiApDialogSec"

    const-string/jumbo v18, "Wifi Sharing Enabled and 5Ghz not supported So make advanced menu invisible"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_490

    :cond_7cb
    sget-boolean v17, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-eqz v17, :cond_917

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    move/from16 v18, v0

    add-int v17, v17, v18

    if-lez v17, :cond_490

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel2gLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    const/4 v12, 0x0

    :goto_818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_835

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    aput-object v18, v17, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_818

    :cond_835
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    move/from16 v17, v0

    if-lez v17, :cond_86e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    :goto_841
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v12, v0, :cond_86e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    aget-object v18, v18, v19

    aput-object v18, v17, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_841

    :cond_86e
    new-instance v5, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    move-object/from16 v18, v0

    const v19, 0x1090008

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v5, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v17, 0x1090009

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    sget v17, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_490

    :cond_8de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_490

    :cond_917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mBand2gTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_490

    :cond_92f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f12219d

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_509

    :cond_947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_570

    :cond_95e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_585

    :cond_96b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5c5

    :cond_982
    const/4 v9, 0x0

    goto/16 :goto_653

    :cond_985
    const/16 v18, 0x0

    goto/16 :goto_67b

    :cond_989
    :try_start_989
    const-string/jumbo v17, "chameleon_maxuser"

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_991
    .catch Landroid/os/RemoteException; {:try_start_989 .. :try_end_991} :catch_999
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_989 .. :try_end_991} :catch_994

    move-result v6

    goto/16 :goto_70e

    :catch_994
    move-exception v11

    sget v6, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    goto/16 :goto_70e

    :catch_999
    move-exception v10

    sget v6, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    goto/16 :goto_70e

    :cond_99e
    new-instance v5, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0d038f

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v17, 0x1090009

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_9c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9e5

    if-eqz v6, :cond_a6f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_a6f

    add-int/lit8 v17, v6, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    :cond_9e5
    :goto_9e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_a01
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0996

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    const-string/jumbo v17, "TMO"

    sget-object v18, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a2c

    const-string/jumbo v17, "NEWCO"

    sget-object v18, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b4f

    :cond_a2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const v18, 0x7f030130

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    :goto_a62
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSecurityFields()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSoftInput()V

    return-void

    :cond_a6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto/16 :goto_9e5

    :cond_a85
    const-string/jumbo v17, "TMO"

    sget-object v18, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a9b

    const-string/jumbo v17, "NEWCO"

    sget-object v18, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b12

    :cond_a9b
    sget v6, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    if-lez v6, :cond_ad8

    new-array v14, v6, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_aa2
    if-ge v12, v6, :cond_ab3

    add-int/lit8 v17, v12, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_aa2

    :cond_ab3
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0d038f

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v17, 0x1090009

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_ad8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9e5

    if-eqz v6, :cond_afc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_afc

    add-int/lit8 v17, v6, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto/16 :goto_9e5

    :cond_afc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto/16 :goto_9e5

    :cond_b12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto/16 :goto_9e5

    :cond_b30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a098c

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_a01

    :cond_b4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0a0997

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_a62
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_23c

    :cond_7
    :goto_7
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {p1, v4}, Landroid/widget/AdapterView;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$5;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void

    :sswitch_1a
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v4

    int-to-long v6, p3

    const v5, 0x7f12179f

    const v8, 0x7f120a40

    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    sput p3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const-string/jumbo v4, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    const-string/jumbo v4, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    :cond_46
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v4, :cond_5d

    const v4, 0x7f1220c5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_5d
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const-string/jumbo v4, "WifiApDialogSec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  mDismissIfOpen ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v4, :cond_a5

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    if-eqz v4, :cond_a5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->saveTempConfig()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    :cond_a5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSecurityFields()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    goto/16 :goto_7

    :sswitch_ad
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v4

    int-to-long v6, p3

    const v5, 0x7f12179f

    const v8, 0x7f120a40

    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    sput p3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const-string/jumbo v4, "WifiApDialogSec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_17c

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_ff
    :goto_ff
    const-string/jumbo v4, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_115

    const-string/jumbo v4, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12c

    :cond_115
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v4, :cond_12c

    const v4, 0x7f1220c5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_12c
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_174

    const-string/jumbo v4, "WifiApDialogSec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  mDismissIfOpen ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v4, :cond_174

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    if-eqz v4, :cond_174

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->saveTempConfig()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    :cond_174
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSecurityFields()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    goto/16 :goto_7

    :cond_17c
    const/4 v4, 0x1

    if-ne p3, v4, :cond_ff

    const/4 v4, 0x2

    sput v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    goto/16 :goto_ff

    :sswitch_184
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v4

    int-to-long v6, p3

    const v5, 0x7f12179f

    const v8, 0x7f120a39

    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    sput p3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    goto/16 :goto_7

    :sswitch_19a
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_7

    :sswitch_1ae
    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto/16 :goto_7

    :sswitch_1b2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    if-nez v4, :cond_1ed

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x4d

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "feature"

    const-string/jumbo v5, "MHTO"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1fb

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "NEVER TIMEOUT"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1dd
    :goto_1dd
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_1ed
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromIndex(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setTimeout(I)V

    goto/16 :goto_7

    :cond_1fb
    const/4 v4, 0x1

    if-ne p3, v4, :cond_208

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "5 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1dd

    :cond_208
    const/4 v4, 0x2

    if-ne p3, v4, :cond_215

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "10 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1dd

    :cond_215
    const/4 v4, 0x3

    if-ne p3, v4, :cond_222

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "20 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1dd

    :cond_222
    const/4 v4, 0x4

    if-ne p3, v4, :cond_22f

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "30 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1dd

    :cond_22f
    const/4 v4, 0x5

    if-ne p3, v4, :cond_1dd

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "60 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1dd

    :sswitch_data_23c
    .sparse-switch
        0x7f0a0772 -> :sswitch_1a
        0x7f0a077d -> :sswitch_ad
        0x7f0a0977 -> :sswitch_184
        0x7f0a0979 -> :sswitch_19a
        0x7f0a098b -> :sswitch_1ae
        0x7f0a0996 -> :sswitch_1b2
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 9

    const/4 v2, 0x0

    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isWifiApSettingUserModificationAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f0a0772

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    :cond_28
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f0a03d4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    if-eqz v6, :cond_87

    :try_start_37
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isWifiApSettingUserModificationAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f0a07b3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f0a07ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V
    :try_end_84
    .catchall {:try_start_37 .. :try_end_84} :catchall_c2

    :goto_84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_87
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    return-void

    :cond_8b
    :try_start_8b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f0a07b3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f0a07ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V
    :try_end_c1
    .catchall {:try_start_8b .. :try_end_c1} :catchall_c2

    goto :goto_84

    :catchall_c2
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public setSaveButtonClicked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    return-void
.end method

.method public setTimeoutValueChangedFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    return-void
.end method

.method public show()V
    .registers 4

    const v2, 0x7f0a0065

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v1, 0x7f0a07ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_21
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_36
    return-void

    :cond_37
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21
.end method

.method public showHideSsidWarningDialog()V
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0387

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    const v3, 0x7f0a0975

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsidDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    const v3, 0x7f0a0985

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    const v3, 0x7f0a0976

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v3, 0x7f121ed0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v3, 0x7f121ed2

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    const v3, 0x7f1208a6

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$7;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public showSoftInput()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_18
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4b

    :cond_28
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_4b
.end method
