.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConfigController$1;,
        Lcom/android/settings/wifi/WifiConfigController$2;,
        Lcom/android/settings/wifi/WifiConfigController$3;,
        Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final WAPI_PSK_TYPE_VALUES:[I

.field private static final mApMaskCheckVsie:[I

.field private static final mIgnorableApMASK:[I


# instance fields
.field private UNKNOWN:Ljava/lang/String;

.field certListFromCCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field certListFromUCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field certListFromUCM_uri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected focusListener:Landroid/view/View$OnFocusChangeListener;

.field private final mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

.field private mAutoGenFirstTime:Z

.field private mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

.field private mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

.field private mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

.field private mCaCertificateShouldBeSelectedString:Ljava/lang/String;

.field private final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/EditText;

.field private mDns2View:Landroid/widget/EditText;

.field private mDoNotProvideEapUserCertString:Ljava/lang/String;

.field private mDoNotValidateEapServerString:Ljava/lang/String;

.field private mEapAnonymousErrorText:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/EditText;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapDomainView:Landroid/widget/TextView;

.field private mEapIdentityErrorText:Landroid/widget/TextView;

.field private mEapIdentityView:Landroid/widget/EditText;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapNoCaCertWarningText:Landroid/widget/TextView;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field mEditTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mFqdn:Ljava/lang/String;

.field private mGateway:Ljava/lang/String;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mInManageNetwork:Z

.field protected mInitDnsAddress:Ljava/lang/String;

.field protected mInitDnsAddress2:Ljava/lang/String;

.field protected mInitGwAddress:Ljava/lang/String;

.field protected mInitIpAddress:Ljava/lang/String;

.field private mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private final mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIpAddressView:Landroid/widget/EditText;

.field protected mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mIsCheckedCckm:Z

.field private mIsCheckedFt:Z

.field protected mIsRequestHideKeyboard:Z

.field private mLevels:[Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMode:I

.field private mMultipleCertSetString:Ljava/lang/String;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordErrorText:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/EditText;

.field protected mPasswordWatcher:Landroid/text/TextWatcher;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhase2FastAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhase2FullAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProviderFriendlyName:Ljava/lang/String;

.field private mProxyAuthId:Landroid/widget/TextView;

.field private mProxyAuthPassword:Landroid/widget/TextView;

.field private mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mQrHiddenSsid:Z

.field private mSAScreenId:I

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSharedCheckBox:Landroid/widget/CheckBox;

.field private mShowPasswordView:Landroid/widget/CheckBox;

.field private mSpinnerTintColor:I

.field private mSsidErrorText:Landroid/widget/TextView;

.field private mSsidView:Landroid/widget/EditText;

.field protected mSsidWatcher:Landroid/text/TextWatcher;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mTempSsid:Ljava/lang/String;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private mUnspecifiedCertString:Ljava/lang/String;

.field private mUseSystemCertsString:Ljava/lang/String;

.field private final mView:Landroid/view/View;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiCertIndex:I

.field private mWapiPskType:Landroid/widget/Spinner;

.field private mWapiUserCert:Landroid/widget/Spinner;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/WifiConfigController;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wifi/WifiConfigController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/wifi/WifiConfigController;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/wifi/WifiConfigController;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/wifi/WifiConfigController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    filled-new-array {v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    new-array v0, v3, [I

    const v1, 0x2ba8c0

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->mIgnorableApMASK:[I

    new-array v0, v3, [I

    const v1, 0xa14ac

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->mApMaskCheckVsie:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;ILandroid/os/Bundle;)V
    .registers 30

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    sget-object v20, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v20, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v20, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIsRequestHideKeyboard:Z

    const-string/jumbo v20, "Unknown"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->UNKNOWN:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    new-instance v20, Lcom/android/settings/wifi/WifiConfigController$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSsidWatcher:Landroid/text/TextWatcher;

    new-instance v20, Lcom/android/settings/wifi/WifiConfigController$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController$2;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mPasswordWatcher:Landroid/text/TextWatcher;

    new-instance v20, Lcom/android/settings/wifi/WifiConfigController$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController$3;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez p3, :cond_442

    const/16 v20, 0x0

    :goto_d2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-eqz p5, :cond_458

    const-string/jumbo v20, "manage_network"

    const/16 v21, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInManageNetwork:Z

    const-string/jumbo v20, "args_linkproperties"

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_115

    const-string/jumbo v20, "args_linkproperties"

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/net/LinkProperties;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    :cond_115
    const-string/jumbo v20, "screen_id"

    const v21, 0x7f1217a6

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    const-string/jumbo v20, "fqdn"

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_448

    const-string/jumbo v20, "fqdn"

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :goto_143
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mFqdn:Ljava/lang/String;

    const-string/jumbo v20, "name"

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_450

    const-string/jumbo v20, "name"

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :goto_161
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProviderFriendlyName:Ljava/lang/String;

    :goto_167
    new-instance v20, Landroid/os/Handler;

    invoke-direct/range {v20 .. v20}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v20, 0x7f060299

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSpinnerTintColor:I

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "wifi"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const v20, 0x7f03014d

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_1ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1120051

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_463

    :cond_1ea
    new-instance v20, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f030142

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    const v23, 0x7f0d03c2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    :goto_20f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    move-object/from16 v20, v0

    const v21, 0x1090009

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v20, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f030142

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    const v23, 0x7f0d03c2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FastAdapter:Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FastAdapter:Landroid/widget/ArrayAdapter;

    move-object/from16 v20, v0

    const v21, 0x1090009

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v20, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f030145

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    const v23, 0x7f0d03c2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    move-object/from16 v20, v0

    const v21, 0x1090009

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f122124

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f1220ac

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f1221c1

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f122044

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f122045

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f122151

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mCaCertificateShouldBeSelectedString:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupIpAndProxySettings()V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mQrHiddenSsid:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a07a4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v9

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    const-string/jumbo v20, "VZW"

    sget-object v21, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_32b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupSecuritySpinner()V

    :cond_32b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    if-nez v20, :cond_4f2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    move/from16 v20, v0

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_34f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    move/from16 v20, v0

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_48a

    :cond_34f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProviderFriendlyName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0429

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v20

    const v21, 0x7f0d03a1

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    const v20, 0x7f0a0550

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    const v21, 0x7f12201c

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    const v20, 0x7f0a0927

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mFqdn:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    move/from16 v20, v0

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122069

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x4

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    :cond_3d0
    :goto_3d0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->isSplitSystemUser()Z

    move-result v20

    if-nez v20, :cond_3e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_3e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonCount()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_407

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f121ffc

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x5

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNegativeButton(Ljava/lang/CharSequence;I)V

    :cond_407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    if-eqz v20, :cond_435

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v20

    if-eqz v20, :cond_435

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v20

    if-eqz v20, :cond_435

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f12201f

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x6

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    :cond_435
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->hasSubmitButton()Z

    move-result v20

    if-eqz v20, :cond_43e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    :cond_43e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboardOnResume()V

    return-void

    :cond_442
    invoke-virtual/range {p3 .. p3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v20

    goto/16 :goto_d2

    :cond_448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->UNKNOWN:Ljava/lang/String;

    move-object/from16 v20, v0

    goto/16 :goto_143

    :cond_450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->UNKNOWN:Ljava/lang/String;

    move-object/from16 v20, v0

    goto/16 :goto_161

    :cond_458
    const v20, 0x7f1217a6

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    goto/16 :goto_167

    :cond_463
    new-instance v20, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f030143

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    const v23, 0x7f0d03c2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    goto/16 :goto_20f

    :cond_48a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f121eaf

    invoke-interface/range {v20 .. v21}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupSsidView()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupSecuritySpinner()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a08fa

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupAdvancedOptionsView()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setVisibleAutoReconnectView()V

    const-string/jumbo v20, "VZW"

    sget-object v21, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4dc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f1220f8

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    :cond_4dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122007

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_3d0

    :cond_4f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v20

    if-nez v20, :cond_8f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    :goto_511
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupApInformation()V

    const/4 v8, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_55e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v20

    if-eqz v20, :cond_55e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v20, "VerizonWiFiAccess"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_55e

    if-eqz v5, :cond_55e

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_55e

    const/4 v8, 0x1

    :cond_55e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0429

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v20

    if-eqz v20, :cond_5d9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v20

    sget-object v21, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_90d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v16, 0x1

    sget-object v20, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    :goto_5a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    iget-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->shared:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->shared:Z

    move/from16 v20, v0

    if-nez v20, :cond_5bb

    const/16 v16, 0x1

    :cond_5bb
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v20

    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_922

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v16, 0x1

    :goto_5d4
    if-eqz v8, :cond_94a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setInvisibleAutoReconnectView()V

    :cond_5d9
    :goto_5d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v20

    if-nez v20, :cond_601

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_601

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-nez v20, :cond_609

    :cond_601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_643

    :cond_609
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupAdvancedOptionsView()V

    if-eqz v16, :cond_640

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0971

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0970

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    :cond_640
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setVisibleAutoReconnectView()V

    :cond_643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_965

    const-string/jumbo v20, "VZW"

    sget-object v21, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_94f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f1220f8

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122007

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    :cond_684
    :goto_684
    const-string/jumbo v20, "SIM_TGY"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v21

    const-string/jumbo v22, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_6d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const-string/jumbo v21, "SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_6d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_6d6
    const-string/jumbo v20, "SIM"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v21

    const-string/jumbo v22, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_741

    const-string/jumbo v20, "SFR WiFi Mobile"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_710

    const-string/jumbo v20, "Orange Mobile Wi-Fi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_741

    :cond_710
    const-string/jumbo v20, "WifiConfigController"

    const-string/jumbo v21, "--Found access point SFR WiFi Mobile or Orange Mobile Wi-Fi"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    if-eqz v20, :cond_741

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const-string/jumbo v21, "SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_741

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_741
    const-string/jumbo v20, "AKA"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v21

    const-string/jumbo v22, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_799

    const-string/jumbo v20, "Orange Mobile Wi-Fi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_799

    const-string/jumbo v20, "WifiConfigController"

    const-string/jumbo v21, "--Found access point Orange Mobile"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    if-eqz v20, :cond_799

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const-string/jumbo v21, "AKA"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_799

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_799
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_846

    const-string/jumbo v20, "AKA"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v21

    const-string/jumbo v22, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_846

    const-string/jumbo v20, "VerizonWiFiAccess"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_846

    const-string/jumbo v20, "WifiConfigController"

    const-string/jumbo v21, "--Found access point VerizonWiFiAccess"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_846

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    if-eqz v20, :cond_846

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_846

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    if-eqz v20, :cond_846

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const-string/jumbo v21, "AKA"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_822

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_822
    const-string/jumbo v20, "WifiConfigController"

    const-string/jumbo v21, "not saved VerizonWiFiAccess. default AKA selected"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a096f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    :cond_846
    const-string/jumbo v20, "AKA"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v21

    const-string/jumbo v22, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_89e

    const-string/jumbo v20, "0001docomo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_89e

    const-string/jumbo v20, "WifiConfigController"

    const-string/jumbo v21, "--Found access point 0001docomo"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    if-eqz v20, :cond_89e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const-string/jumbo v21, "AKA"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_89e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_89e
    const-string/jumbo v20, "AKAPRIME"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v21

    const-string/jumbo v22, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3d0

    const-string/jumbo v20, "0001docomo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3d0

    const-string/jumbo v20, "WifiConfigController"

    const-string/jumbo v21, "--Found access point 0001docomo"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const-string/jumbo v21, "AKA\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_3d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3d0

    :cond_8f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_511

    :cond_90d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    sget-object v20, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto/16 :goto_5a6

    :cond_922
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v20

    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_93d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v16, 0x1

    goto/16 :goto_5d4

    :cond_93d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5d4

    :cond_94a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setVisibleAutoReconnectView()V

    goto/16 :goto_5d9

    :cond_94f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f1220f8

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_684

    :cond_965
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122007

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    const-string/jumbo v20, "VZW"

    sget-object v21, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_684

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/settings/wifi/WifiDialog;

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiDialog;->isSetupWizard:Z

    move/from16 v20, v0

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_684

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v20

    if-eqz v20, :cond_684

    if-nez v8, :cond_9d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_9d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122051

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x3

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    :cond_9d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122069

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x4

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNegativeButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_684

    :cond_9ea
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a0e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122007

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_684

    :cond_a0e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a91

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    iget-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mQrHiddenSsid:Z

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-nez v20, :cond_a48

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_a84

    :cond_a48
    :goto_a48
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a6e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setSelection(I)V

    :cond_a6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122007

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_684

    :cond_a84
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_a6e

    goto :goto_a48

    :cond_a91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v17

    const/4 v10, 0x0

    sget-boolean v20, Lcom/android/settings/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v20, :cond_aae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v10

    :cond_aae
    if-eqz v18, :cond_ab8

    sget-object v20, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b3b

    :cond_ab8
    if-eqz v17, :cond_b3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mInManageNetwork:Z

    move/from16 v20, v0

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_b3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122007

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    :goto_ad8
    const-string/jumbo v20, "VZW"

    sget-object v21, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_bcf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/settings/wifi/WifiDialog;

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiDialog;->isSetupWizard:Z

    move/from16 v20, v0

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_bcf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v20

    if-eqz v20, :cond_b4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122069

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x4

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    if-nez v8, :cond_684

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_684

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122051

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x3

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_684

    :cond_b3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0434

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ad8

    :cond_b4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v20

    if-eqz v20, :cond_684

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_ba6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122069

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x4

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    :goto_b80
    if-nez v8, :cond_684

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_684

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122051

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x3

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_684

    :cond_ba6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122007

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122069

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x4

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNegativeButton(Ljava/lang/CharSequence;I)V

    goto :goto_b80

    :cond_bcf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v20

    if-nez v20, :cond_be7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v20

    if-eqz v20, :cond_684

    :cond_be7
    xor-int/lit8 v20, v10, 0x1

    if-eqz v20, :cond_684

    xor-int/lit8 v20, v9, 0x1

    if-eqz v20, :cond_684

    xor-int/lit8 v20, v7, 0x1

    if-eqz v20, :cond_684

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v20

    if-eqz v20, :cond_c0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122018

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x4

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_684

    :cond_c0f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f122069

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x4

    invoke-interface/range {v20 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_684
.end method

.method private addCaptivePortalRow(Landroid/view/ViewGroup;I)V
    .registers 16

    const/4 v12, 0x0

    const v11, 0x7f0a0927

    const/4 v10, 0x1

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    if-nez v5, :cond_19

    const-string/jumbo v7, "WifiConfigController"

    const-string/jumbo v8, "Invalid URL for Captive portal login"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    const-string/jumbo v7, "\""

    const-string/jumbo v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_cf

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const-string/jumbo v8, "//"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_cf

    sget-boolean v7, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v7, :cond_61

    const-string/jumbo v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addCaptivePortalRow: indexof(//):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "//"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v7, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v7, :cond_a4

    const-string/jumbo v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addCaptivePortalRow: front - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", rear - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_be

    const-string/jumbo v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_be

    const-string/jumbo v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_be
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_cf
    sget-boolean v7, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v7, :cond_f8

    const-string/jumbo v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addCaptivePortalRow: url - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", linkName - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</a>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0d03ab

    invoke-virtual {v7, v8, p1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0a0550

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLinksClickable(Z)V

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setEnabled(Z)V

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_54

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_54

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_54

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a09a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d03a1

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_38
    const v2, 0x7f0a0550

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0a0927

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_54
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d03a2

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_38
.end method

.method private checkIp4vAddress(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1e

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_11

    return v3

    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    return v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1e
    return v3
.end method

.method private findEditTextFromLayout(Landroid/view/ViewGroup;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1e

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1e
    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2a
    return-void
.end method

.method private generateBlankFields(Ljava/net/Inet4Address;)V
    .registers 11

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "generateBlankFields"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7c

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f1220b0

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x18

    :cond_2e
    :goto_2e
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_59

    :try_start_3e
    invoke-static {p1, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    aput-byte v7, v0, v6

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_59} :catch_97
    .catch Ljava/net/UnknownHostException; {:try_start_3e .. :try_end_59} :catch_99

    :cond_59
    :goto_59
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7b

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f122041

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7b
    return-void

    :cond_7c
    :try_start_7c
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_89} :catch_93

    move-result v4

    if-ltz v4, :cond_90

    const/16 v6, 0x20

    if-le v4, v6, :cond_2e

    :cond_90
    const/16 v4, 0x18

    goto :goto_2e

    :catch_93
    move-exception v1

    const/16 v4, 0x18

    goto :goto_2e

    :catch_97
    move-exception v2

    goto :goto_59

    :catch_99
    move-exception v5

    goto :goto_59
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .registers 4

    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v3, :cond_34

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_15

    add-int/lit8 v4, v1, 0x2

    move v1, v4

    :cond_15
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_31

    if-eqz v4, :cond_31

    move v0, v1

    const/4 v5, 0x1

    if-ne p2, v5, :cond_28

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_27
    return-object v2

    :cond_28
    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_34
    return-object v2
.end method

.method private getSignalString()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_13

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I
    .registers 6

    const/4 v2, -0x1

    if-nez p1, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1d
    return v2
.end method

.method private initIpConfigFieldsFromLinkProperties(Landroid/net/LinkProperties;)V
    .registers 17

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :cond_9
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    invoke-virtual {v8}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v12, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v12, :cond_37

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields ip "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_fe

    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    if-nez v12, :cond_4b

    iput-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    :cond_4b
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x1

    :cond_5e
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    iget-object v13, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_76
    :goto_76
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/RouteInfo;

    invoke-virtual {v10}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    sget-boolean v12, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v12, :cond_a8

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields gw "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    invoke-virtual {v10}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v12

    if-eqz v12, :cond_76

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_120

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    if-nez v12, :cond_ba

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    :cond_ba
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x1

    :cond_c0
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v3, 0x0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v12

    if-eqz v12, :cond_134

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_e3
    :goto_e3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_fd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v12

    if-eqz v12, :cond_17c

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_fd
    :goto_fd
    return-void

    :cond_fe
    if-nez v9, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {v8}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/settings/wifi/WifiConfigController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    if-nez v12, :cond_110

    iput-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    :cond_110
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-direct {p0, v6, v1}, Lcom/android/settings/wifi/WifiConfigController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_120
    if-nez v9, :cond_76

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/settings/wifi/WifiConfigController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    if-nez v12, :cond_12d

    iput-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    :cond_12d
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_76

    :cond_134
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    sget-boolean v12, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v12, :cond_156

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields dns1 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_156
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_169

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v12, :cond_162

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    :cond_162
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e3

    :cond_169
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v12, :cond_e3

    const-string/jumbo v12, ""

    iput-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    goto/16 :goto_e3

    :cond_17c
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    sget-boolean v12, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v12, :cond_19e

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields dns2 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19e
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b1

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v12, :cond_1aa

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    :cond_1aa
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fd

    :cond_1b1
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v12, :cond_fd

    const-string/jumbo v12, ""

    iput-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    goto/16 :goto_fd
.end method

.method private ipAndProxyFieldsAreValid()Z
    .registers 14

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_28

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_f
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v12, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v12, :cond_2b

    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v0, 0x0

    return v0

    :cond_28
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_f

    :cond_2b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    const/4 v0, 0x1

    if-ne v9, v0, :cond_c0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_c0

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v8, 0x0

    :try_start_63
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v7, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_6a} :catch_a8

    move-result v8

    :goto_6b
    if-nez v8, :cond_be

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v12, 0x7f0a0694

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ad

    :cond_a6
    const/4 v0, 0x0

    return v0

    :catch_a8
    move-exception v6

    const v8, 0x7f121575

    goto :goto_6b

    :cond_ad
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct/range {v0 .. v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_b4
    :goto_b4
    const/4 v0, 0x1

    return v0

    :cond_b6
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v1, v2, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_b4

    :cond_be
    const/4 v0, 0x0

    return v0

    :cond_c0
    const/4 v0, 0x2

    if-ne v9, v0, :cond_b4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v0, :cond_b4

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d9

    const/4 v0, 0x0

    return v0

    :cond_d9
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_e5

    const/4 v0, 0x0

    return v0

    :cond_e5
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v10}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_b4
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "WifiConfigController"

    const-string/jumbo v23, "****Trying to Load certificates from CCM*****"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v22, "USRPKEY_"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_db

    :try_start_30
    const-string/jumbo v22, "knox_ccm_policy"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_193

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v7

    :goto_53
    const-string/jumbo v22, "3.0"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_bc

    const-string/jumbo v22, "WifiConfigController"

    const-string/jumbo v23, "Fetching WiFi aliases from CCM"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/sec/tima_keychain/TimaKeychain;->getAliasesForWifi(Z)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_73

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    :cond_73
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_bc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " [Knox]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_ad} :catch_ae

    goto :goto_82

    :catch_ae
    move-exception v10

    const-string/jumbo v22, "WifiConfigController"

    const-string/jumbo v23, "Failed at ClientCertificateManager API getAliasesForWiFi-Exception "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_db
    const-string/jumbo v22, "USRPKEY_"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c8

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->sawUcmPrivateKeyForWifi()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_1c8

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_1c8

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v15

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    :try_start_10e
    invoke-static {}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v20

    const/4 v13, 0x0

    :goto_113
    if-ge v13, v15, :cond_1c8

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v19 .. v19}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v22, "WifiConfigController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "add UCM List : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/android/settings/wifi/WifiConfigController;->makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_190} :catch_196

    add-int/lit8 v13, v13, 0x1

    goto :goto_113

    :cond_193
    const/4 v7, 0x0

    goto/16 :goto_53

    :catch_196
    move-exception v11

    const-string/jumbo v22, "WifiConfigController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "exception happened : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_1e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1e7
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v22

    const/16 v23, 0x3f2

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/String;

    const v23, 0x7f0d03c2

    move/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v3, v9, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v22, 0x1090009

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    const/16 v3, 0x3f2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    if-nez p1, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_23

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_23

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_23

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_23
    return-object p1
.end method

.method private sawUcmPrivateKeyForWifi()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x0

    const/16 v5, 0x3e8

    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_21

    const-string/jumbo v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sawUcmPrivateKeyForWifi : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    new-instance v9, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    const-string/jumbo v10, "KNOX"

    invoke-direct {v9, v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v7

    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_54

    const-string/jumbo v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "uri : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    invoke-static {}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v3

    if-nez v3, :cond_68

    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_67

    const-string/jumbo v9, "WifiConfigController"

    const-string/jumbo v10, "UniversalCredentialUtil is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return-object v12

    :cond_68
    const/4 v9, 0x1

    invoke-virtual {v3, v7, v9}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_70

    return-object v12

    :cond_70
    const-string/jumbo v9, "stringarrayresponse"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_b4

    if-eqz v8, :cond_c6

    array-length v9, v8

    if-eqz v9, :cond_a7

    const/4 v4, 0x0

    :goto_81
    array-length v9, v8

    if-ge v4, v9, :cond_b4

    aget-object v6, v8, v4

    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_a4

    const-string/jumbo v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "tempUri : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    :cond_a7
    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_b4

    const-string/jumbo v9, "WifiConfigController"

    const-string/jumbo v10, "uris length is 0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b4
    :goto_b4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v8, :cond_d4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_bf
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_c6
    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_b4

    const-string/jumbo v9, "WifiConfigController"

    const-string/jumbo v10, "uris is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    :cond_d4
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_bf
.end method

.method private setAdapterToSpinner(Landroid/widget/Spinner;I)V
    .registers 7

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d03c2

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0467

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAutoReconnectEnabled(Z)V
    .registers 8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_4a

    if-eqz p1, :cond_4b

    const/4 v3, 0x1

    :goto_c
    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x47

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "netId"

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "autoReconnect"

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    if-eqz p1, :cond_4d

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v5, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_4a

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    move v3, v4

    goto :goto_c

    :cond_4d
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_4a

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_4a
.end method

.method private setCaCertInvisible()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0468

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setDomainInvisible()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0469

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setIdentityInvisible()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a046a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setPasswordInvisible()V
    .registers 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a061a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a07b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPhase2Invisible()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a046e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .registers 6

    if-eqz p2, :cond_1d

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_e
    if-ltz v1, :cond_1d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1d
    return-void

    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_e
.end method

.method private setUserCertInvisible()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a046f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setVisibility(II)V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .registers 12

    const v9, 0x7f0a046e

    const v8, 0x7f0a046b

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_116

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v4, :cond_116

    const-string/jumbo v4, "VerizonWiFiAccess"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_116

    iget v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_116

    const/4 v4, 0x5

    if-ne p1, v4, :cond_116

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_dd

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_dd

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v2, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v2, :cond_6d

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6d

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a046c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->setInvisibleAutoReconnectView()V

    :cond_6d
    :goto_6d
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a0469

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a0468

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a061a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a07b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a046d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    packed-switch p1, :pswitch_data_214

    :cond_b2
    :goto_b2
    :pswitch_b2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a0468

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v7, :cond_dc

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d9

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dc

    :cond_d9
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    :cond_dc
    return-void

    :cond_dd
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-nez v4, :cond_ff

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a046c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->setInvisibleAutoReconnectView()V

    goto/16 :goto_6d

    :cond_ff
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a046a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6d

    :cond_116
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a046a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6d

    :pswitch_12d
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto/16 :goto_b2

    :pswitch_13e
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a046f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto/16 :goto_b2

    :pswitch_155
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    if-eq v4, v5, :cond_166

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_166
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a0467

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showPeapFields()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    sget-boolean v4, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v4, :cond_b2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v4, :cond_b2

    const-string/jumbo v4, "CMCC"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    goto/16 :goto_b2

    :pswitch_1a3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    if-eq v4, v5, :cond_1b4

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_1b4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a0467

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto/16 :goto_b2

    :pswitch_1ce
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_b2

    :pswitch_1e5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a046d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FastAdapter:Landroid/widget/ArrayAdapter;

    if-eq v4, v5, :cond_202

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FastAdapter:Landroid/widget/ArrayAdapter;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_202
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    goto/16 :goto_b2

    nop

    :pswitch_data_214
    .packed-switch 0x0
        :pswitch_155
        :pswitch_13e
        :pswitch_1a3
        :pswitch_12d
        :pswitch_1ce
        :pswitch_1ce
        :pswitch_1ce
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_1e5
        :pswitch_12d
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .registers 12

    const v10, 0x7f0a080e

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f0a0434

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v6, :cond_76

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v6

    if-eqz v6, :cond_76

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    new-array v1, v9, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v8

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_76

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_76

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v6, :cond_76

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v6, :cond_5b

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_5b
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v6, :cond_64

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_64
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    if-eqz v6, :cond_6d

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_6d
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v6, :cond_76

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_76
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v9, :cond_1da

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-nez v6, :cond_e5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f0a0439

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f0a037d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f0a057a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f0a0284

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f0a0285

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_e5
    if-eqz v2, :cond_102

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v6

    if-eqz v6, :cond_103

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v7, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v6, v7, :cond_103

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v6, :cond_103

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiConfigController;->initIpConfigFieldsFromLinkProperties(Landroid/net/LinkProperties;)V

    :cond_102
    :goto_102
    return-void

    :cond_103
    if-eqz v5, :cond_102

    iget-object v6, v5, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v6, :cond_190

    iget-object v6, v5, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    if-nez v6, :cond_119

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    :cond_119
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v7, v5, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v7}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12d
    :goto_12d
    iget-object v6, v5, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v6, :cond_19a

    iget-object v6, v5, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    if-nez v6, :cond_13d

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    :cond_13d
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_142
    :goto_142
    iget-object v6, v5, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-eqz v6, :cond_1a4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v6, :cond_163

    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    :cond_163
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_16b
    :goto_16b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1cf

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-eqz v6, :cond_1be

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v6, :cond_186

    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    :cond_186
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_102

    :cond_190
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    if-nez v6, :cond_12d

    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    goto :goto_12d

    :cond_19a
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    if-nez v6, :cond_142

    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    goto :goto_142

    :cond_1a4
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v6, :cond_1ae

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    :cond_1ae
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16b

    :cond_1b4
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v6, :cond_16b

    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    goto :goto_16b

    :cond_1be
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v6, :cond_1c8

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    :cond_1c8
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_102

    :cond_1cf
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v6, :cond_102

    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    goto/16 :goto_102

    :cond_1da
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_102
.end method

.method private showPeapFields()V
    .registers 6

    const v4, 0x7f0a046a

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-ne v0, v1, :cond_27

    :cond_10
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    :goto_26
    return-void

    :cond_27
    const/4 v1, 0x5

    if-eq v0, v1, :cond_10

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0467

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a061a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a07b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_26
.end method

.method private showProxyFields()V
    .registers 13

    const v11, 0x7f0a0699

    const v10, 0x7f0a0696

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f0a069c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v6, :cond_28

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v6

    if-eqz v6, :cond_28

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    :cond_28
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v6, :cond_144

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_144

    const v6, 0x7f0a069e

    invoke-direct {p0, v6, v8}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    invoke-direct {p0, v10, v8}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    invoke-direct {p0, v11, v9}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v6, :cond_a3

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f0a0697

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f0a069a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f0a0695

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-nez v6, :cond_a3

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f0a0691

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f0a0692

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_a3
    if-eqz v1, :cond_e0

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    if-eqz v4, :cond_e0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_e0

    if-eqz v2, :cond_e0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e0
    :goto_e0
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v6, :cond_143

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v6

    if-eqz v6, :cond_143

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_143

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_143

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v6, :cond_116

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_116
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v6, :cond_11f

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_11f
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v6, :cond_128

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_128
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v6, :cond_131

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_131
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v6, :cond_13a

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_13a
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v6, :cond_143

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_143
    return-void

    :cond_144
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_186

    const v6, 0x7f0a069e

    invoke-direct {p0, v6, v9}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    invoke-direct {p0, v10, v9}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    invoke-direct {p0, v11, v8}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v6, :cond_16f

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f0a0698

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_16f
    if-eqz v1, :cond_e0

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    if-eqz v3, :cond_e0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e0

    :cond_186
    const v6, 0x7f0a069e

    invoke-direct {p0, v6, v9}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    invoke-direct {p0, v10, v9}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    invoke-direct {p0, v11, v9}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    goto/16 :goto_e0
.end method

.method private showSecurityFields()V
    .registers 29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0773

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v2, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupConnectionWarningView()V

    :cond_34
    return-void

    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_65

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_65

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/16 v4, 0xa

    if-eq v2, v4, :cond_65

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_65

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0773

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0773

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v2, :cond_124

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupPasswordView()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a07b3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CheckBox;

    if-eqz v21, :cond_ce

    const-string/jumbo v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "getPasswordHidden"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_ce

    :try_start_a7
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v2, "getPasswordHidden"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_cb
    .catchall {:try_start_a7 .. :try_end_cb} :catchall_11f

    :goto_cb
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_ce
    :goto_ce
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v2, :cond_100

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1bf

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a094c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_e9
    :goto_e9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_23d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a094b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_100
    :goto_100
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2b0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a02a6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_118
    const/4 v2, 0x0

    :try_start_119
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_11e
    .catchall {:try_start_119 .. :try_end_11e} :catchall_11f

    goto :goto_cb

    :catchall_11f
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_175

    if-eqz v22, :cond_175

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v2, "[0-9A-Fa-f]*"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_195

    const/16 v2, 0xd

    move/from16 v0, v22

    if-le v0, v2, :cond_195

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0xd

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_175
    :goto_175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_ce

    :cond_195
    const/16 v2, 0x1a

    move/from16 v0, v22

    if-le v0, v2, :cond_175

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x1a

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v4, 0x1a

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_175

    :cond_1bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a094c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    if-nez v2, :cond_20d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a094d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    new-instance v10, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030156

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d03c2

    invoke-direct {v10, v2, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v2, 0x1090009

    invoke-virtual {v10, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v2, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_20d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_e9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_e9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_e9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    iget v4, v13, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_e9

    :cond_23d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0773

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a094b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    if-nez v2, :cond_273

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a094a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    :cond_273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    if-nez v2, :cond_28a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a094e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    :cond_28a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    const-string/jumbo v6, "WAPIAS_"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    const-string/jumbo v6, "WAPIUSR_"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_100

    :cond_2b0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a02a6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_76f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0528

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_5e3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_5e3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "CMCC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e3

    const-string/jumbo v2, "PEAP"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "SIM"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_306
    new-instance v10, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0d03c2

    move-object/from16 v0, v20

    invoke-direct {v10, v2, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    invoke-virtual {v10, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupEapPhase()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a013d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0292

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0912

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a040e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/settings/Utils$EmojiInputFilter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a09b2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityErrorText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityErrorText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0088

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/settings/Utils$EmojiInputFilter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0972

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousErrorText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousErrorText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a05b8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapNoCaCertWarningText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string/jumbo v6, "CACERT_"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string/jumbo v6, "USRPKEY_"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_74d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_74d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v16

    move/from16 v15, v16

    const/16 v2, 0x12

    move/from16 v0, v16

    if-ne v0, v2, :cond_625

    const/4 v15, 0x7

    :cond_488
    :goto_488
    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_637

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_637

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "CMCC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_637

    const/4 v2, 0x4

    if-ne v15, v2, :cond_4a7

    const/4 v15, 0x1

    :cond_4a7
    :goto_4a7
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v15}, Landroid/widget/Spinner;->setSelection(I)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_4d4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string/jumbo v4, "fast_provisioning="

    const-string/jumbo v5, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_4d4
    sparse-switch v16, :sswitch_data_832

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_4e0
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6f8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :goto_4f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_740

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :goto_519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_52f
    :goto_52f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    if-eqz v2, :cond_55b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_828

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_55b
    :goto_55b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_5e2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_5e2

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v11, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v2, v11}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5e2

    const-string/jumbo v2, "WifiPolicy"

    const-string/jumbo v4, "Enterprise Wifi settings not editable"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_5aa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_5aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_5b8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_5b8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_5c6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_5c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_5d4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_5d4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_5e2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_5e2
    return-void

    :cond_5e3
    const-string/jumbo v2, "PEAP"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "TLS"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "TTLS"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "PWD"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "SIM"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "AKA"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "AKA\'"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "FAST"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_306

    :cond_625
    const/16 v2, 0x13

    move/from16 v0, v16

    if-ne v0, v2, :cond_62f

    const/16 v15, 0x8

    goto/16 :goto_488

    :cond_62f
    const/4 v2, 0x7

    move/from16 v0, v16

    if-ne v0, v2, :cond_488

    const/4 v15, 0x0

    goto/16 :goto_488

    :cond_637
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v4, v4

    if-eq v2, v4, :cond_64a

    const/16 v2, 0x13

    move/from16 v0, v16

    if-le v0, v2, :cond_4a7

    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_4a7

    :cond_64a
    const/4 v2, 0x6

    move/from16 v0, v16

    if-ne v0, v2, :cond_653

    add-int/lit8 v15, v15, -0x2

    goto/16 :goto_4a7

    :cond_653
    const/4 v2, 0x5

    move/from16 v0, v16

    if-le v0, v2, :cond_4a7

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4a7

    :sswitch_65c
    packed-switch v25, :pswitch_data_83c

    :pswitch_65f
    const-string/jumbo v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid phase 2 method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e0

    :pswitch_67d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4e0

    :pswitch_687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4e0

    :pswitch_691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4e0

    :pswitch_69b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4e0

    :pswitch_6a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4e0

    :pswitch_6af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4e0

    :sswitch_6b9
    packed-switch v25, :pswitch_data_850

    :pswitch_6bc
    const-string/jumbo v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid phase 2 method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e0

    :pswitch_6da
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4e0

    :pswitch_6e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4e0

    :pswitch_6ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4e0

    :cond_6f8
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_70d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_4f7

    :cond_70d
    array-length v2, v12

    const/4 v4, 0x1

    if-ne v2, v4, :cond_71f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    aget-object v4, v12, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_4f7

    :cond_71f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string/jumbo v6, "CACERT_"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_4f7

    :cond_740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v2, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_519

    :cond_74d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->getDefaultEapFieldsIndex()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string/jumbo v4, "1"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_52f

    :cond_76f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v2, "PEAP"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78e

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_52f

    :cond_78e
    const-string/jumbo v2, "TLS"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_52f

    :cond_7a1
    const-string/jumbo v2, "TTLS"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b4

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_52f

    :cond_7b4
    const-string/jumbo v2, "PWD"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c7

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_52f

    :cond_7c7
    const-string/jumbo v2, "SIM"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7da

    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_52f

    :cond_7da
    const-string/jumbo v2, "AKA"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7ed

    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_52f

    :cond_7ed
    const-string/jumbo v2, "AKA\'"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_800

    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_52f

    :cond_800
    const-string/jumbo v2, "FAST"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_814

    const/16 v2, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_52f

    :cond_814
    const-string/jumbo v2, "LEAP"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52f

    const/16 v2, 0x13

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_52f

    :cond_828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_55b

    :sswitch_data_832
    .sparse-switch
        0x0 -> :sswitch_65c
        0x12 -> :sswitch_6b9
    .end sparse-switch

    :pswitch_data_83c
    .packed-switch 0x0
        :pswitch_67d
        :pswitch_65f
        :pswitch_65f
        :pswitch_687
        :pswitch_691
        :pswitch_69b
        :pswitch_6a5
        :pswitch_6af
    .end packed-switch

    :pswitch_data_850
    .packed-switch 0x0
        :pswitch_6da
        :pswitch_6bc
        :pswitch_6bc
        :pswitch_6e4
        :pswitch_6ee
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .registers 15

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-nez v11, :cond_6

    const/4 v11, 0x0

    return v11

    :cond_6
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1a

    const v11, 0x7f12208c

    return v11

    :cond_1a
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v7

    if-nez v7, :cond_24

    const v11, 0x7f12208c

    return v11

    :cond_24
    :try_start_24
    iget-boolean v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    if-eqz v11, :cond_2e

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiConfigController;->generateBlankFields(Ljava/net/Inet4Address;)V
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_2e} :catch_43

    :cond_2e
    const/4 v10, -0x1

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_48

    const v11, 0x7f12208d

    return v11

    :catch_43
    move-exception v3

    const v11, 0x7f12208c

    return v11

    :cond_48
    :try_start_48
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_52

    const/16 v11, 0x20

    if-le v10, v11, :cond_56

    :cond_52
    const v11, 0x7f12208d

    return v11

    :cond_56
    new-instance v11, Landroid/net/LinkAddress;

    invoke-direct {v11, v7, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v11, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_5d} :catch_71

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_76

    const v11, 0x7f12208b

    return v11

    :catch_71
    move-exception v4

    const v11, 0x7f12208d

    return v11

    :cond_76
    const/4 v6, 0x0

    :try_start_77
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_77 .. :try_end_7a} :catch_a1

    move-result-object v6

    iput-object v6, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a6

    const v11, 0x7f12208a

    return v11

    :catch_a1
    move-exception v3

    const v11, 0x7f12208b

    return v11

    :cond_a6
    const/4 v2, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_cc

    :try_start_ad
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ad .. :try_end_b0} :catch_c7

    move-result-object v2

    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c5

    :try_start_bc
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bc .. :try_end_bf} :catch_d6

    move-result-object v2

    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c5
    const/4 v11, 0x0

    return v11

    :catch_c7
    move-exception v3

    const v11, 0x7f12208a

    return v11

    :cond_cc
    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b6

    :catch_d6
    move-exception v3

    const v11, 0x7f12208a

    return v11
.end method


# virtual methods
.method public OpenWebPage()V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v1

    const-string/jumbo v2, "WifiConfigController"

    const-string/jumbo v3, "Go to Webpage: Activity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_13
.end method

.method protected addGatewayRow(Landroid/view/ViewGroup;I)V
    .registers 16

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v8, :cond_5

    return-void

    :cond_5
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_11

    return-void

    :cond_11
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_24

    const-string/jumbo v8, "WifiConfigController"

    const-string/jumbo v9, "Go to Webpage: SEC_MOBILE_AP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    sget-object v9, Lcom/android/settings/wifi/WifiConfigController;->mIgnorableApMASK:[I

    const/4 v8, 0x0

    array-length v10, v9

    :goto_2e
    if-ge v8, v10, :cond_4b

    aget v5, v9, v8

    if-eqz v4, :cond_48

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v11

    const v12, 0xffffff

    and-int/2addr v11, v12

    if-ne v11, v5, :cond_48

    const-string/jumbo v8, "WifiConfigController"

    const-string/jumbo v9, "Go to Webpage: Masked Android Hotspot"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_48
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_4b
    if-eqz v4, :cond_78

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getCheckVsieForSns()Z

    move-result v8

    if-eqz v8, :cond_78

    sget-object v9, Lcom/android/settings/wifi/WifiConfigController;->mApMaskCheckVsie:[I

    const/4 v8, 0x0

    array-length v10, v9

    :goto_57
    if-ge v8, v10, :cond_78

    aget v5, v9, v8

    if-eqz v4, :cond_75

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v11

    const v12, 0xffffff

    and-int/2addr v11, v12

    if-ne v11, v5, :cond_75

    sget-boolean v8, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v8, :cond_74

    const-string/jumbo v8, "WifiConfigController"

    const-string/jumbo v9, "This has a LO Gateway Address"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    return-void

    :cond_75
    add-int/lit8 v8, v8, 0x1

    goto :goto_57

    :cond_78
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_135

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v9, :cond_135

    iget v8, v2, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v8, :cond_135

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "WifiConfigController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Go to Webpage: gateway addr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v8, Lcom/android/settings/wifi/WifiSettings;->goToWebPageHTTPResponse:I

    if-eqz v8, :cond_136

    sget v8, Lcom/android/settings/wifi/WifiSettings;->goToWebPageHTTPResponse:I

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_e0

    sget v8, Lcom/android/settings/wifi/WifiSettings;->goToWebPageHTTPResponse:I

    const/16 v9, 0x191

    if-ne v8, v9, :cond_135

    :cond_e0
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v8}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0d03ab

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f0a0550

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/UnderlineSpan;

    invoke-direct {v8}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x21

    invoke-virtual {v1, v8, v10, v9, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v8, 0x7f0a0927

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a0927

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Lcom/android/settings/wifi/WifiConfigController$7;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiConfigController$7;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/settings/wifi/WifiSettings;->goToWebPageLinkViewed:Z

    :cond_135
    :goto_135
    return-void

    :cond_136
    new-instance v3, Lcom/android/settings/wifi/WifiConfigController$8;

    invoke-direct {v3, p0, p1, p2, v7}, Lcom/android/settings/wifi/WifiConfigController$8;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/view/ViewGroup;ILjava/lang/StringBuilder;)V

    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v3, v8, v9}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_135
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiConfigController$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigController$6;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method enableSubmitIfAppropriate()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_10
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_20
    return-void
.end method

.method public getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .registers 24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    move/from16 v18, v0

    if-nez v18, :cond_b

    const/16 v18, 0x0

    return-object v18

    :cond_b
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-nez v18, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_50

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mQrHiddenSsid:Z

    move/from16 v18, v0

    if-eqz v18, :cond_50

    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->shared:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_90a

    const/16 v18, 0x0

    return-object v18

    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v18

    if-nez v18, :cond_89

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_34

    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_34

    :pswitch_9e
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    :cond_a7
    :goto_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settingslib/wifi/AccessPoint;->getSecFlags()Ljava/util/BitSet;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    if-eqz v13, :cond_e1

    iget-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    if-eqz v18, :cond_fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_906

    const/16 v18, 0x1

    :goto_f7
    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    :cond_fb
    new-instance v18, Landroid/net/IpConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    move-object/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    return-object v4

    :pswitch_11e
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->length()I

    move-result v18

    if-eqz v18, :cond_a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->length()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v8, v0, :cond_171

    const/16 v18, 0x1a

    move/from16 v0, v18

    if-ne v8, v0, :cond_186

    :cond_171
    const-string/jumbo v18, "[0-9A-Fa-f]*"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18c

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    goto/16 :goto_a7

    :cond_186
    const/16 v18, 0x3a

    move/from16 v0, v18

    if-eq v8, v0, :cond_171

    :cond_18c
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x22

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x22

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    goto/16 :goto_a7

    :pswitch_1b1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    move/from16 v18, v0

    if-eqz v18, :cond_22f

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    :goto_1c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->length()I

    move-result v18

    if-eqz v18, :cond_1f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v18, "[0-9A-Fa-f]{64}"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_239

    iput-object v10, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_1f1
    :goto_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a7

    const-string/jumbo v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mWapiPskType.getSelectedItemPosition() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v19

    aget v6, v18, v19

    iput v6, v4, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_a7

    :cond_22f
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    goto :goto_1c2

    :cond_239
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/String;->clear()V

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    iput-object v15, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1f1

    :pswitch_26c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    move/from16 v18, v0

    if-eqz v18, :cond_429

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    :goto_27d
    new-instance v18, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct/range {v18 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    sget-boolean v18, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v18, :cond_2d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "CMCC"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2d7

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_2d7

    const/4 v5, 0x4

    :cond_2d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v12

    const-string/jumbo v18, "PEAP"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_492

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    packed-switch v12, :pswitch_data_91a

    const-string/jumbo v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unknown phase2 method"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_36d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_599

    :cond_36d
    :goto_36d
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_3bd

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_3bd

    const-string/jumbo v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ca_cert ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") and ca_path ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") should not both be non-null"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3e8

    :cond_3e5
    const-string/jumbo v3, ""

    :cond_3e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_68b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_68b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_68b

    invoke-virtual {v3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_426

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_610

    :cond_426
    const/16 v18, 0x0

    return-object v18

    :cond_429
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    move/from16 v18, v0

    if-eqz v18, :cond_43c

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_27d

    :cond_43c
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_27d

    :pswitch_450
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_31e

    :pswitch_45b
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_31e

    :pswitch_466
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_31e

    :pswitch_471
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_31e

    :pswitch_47c
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_31e

    :pswitch_487
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_31e

    :cond_492
    const-string/jumbo v18, "FAST"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4fb

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x12

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const-string/jumbo v19, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    packed-switch v12, :pswitch_data_92a

    const-string/jumbo v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unknown phase2 method"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31e

    :pswitch_4da
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_31e

    :pswitch_4e5
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_31e

    :pswitch_4f0
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_31e

    :cond_4fb
    const-string/jumbo v18, "TLS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_51a

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_50f
    :goto_50f
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_31e

    :cond_51a
    const-string/jumbo v18, "TTLS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_52f

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_50f

    :cond_52f
    const-string/jumbo v18, "PWD"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_544

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_50f

    :cond_544
    const-string/jumbo v18, "SIM"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_559

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_50f

    :cond_559
    const-string/jumbo v18, "AKA"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_56e

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_50f

    :cond_56e
    const-string/jumbo v18, "AKA\'"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_583

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_50f

    :cond_583
    const-string/jumbo v18, "LEAP"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_50f

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x13

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_50f

    :cond_599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5b3

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const-string/jumbo v19, "/system/etc/security/cacerts"

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto/16 :goto_36d

    :cond_5b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-eqz v18, :cond_36d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v18

    if-nez v18, :cond_5de

    const-string/jumbo v18, "WifiConfigController"

    const-string/jumbo v19, "Multiple certs can only be set when editing saved network"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5de
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto/16 :goto_36d

    :cond_5fb
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v2, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto/16 :goto_36d

    :cond_610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    :cond_627
    :goto_627
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_6c0

    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v5, v0, :cond_648

    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v5, v0, :cond_6ba

    :cond_648
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    :goto_65c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->isShown()Z

    move-result v18

    if-eqz v18, :cond_713

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->length()I

    move-result v18

    if-lez v18, :cond_a7

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_a7

    :cond_68b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_627

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_627

    const-string/jumbo v18, " [Knox]"

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    goto/16 :goto_627

    :cond_6ba
    const/16 v18, 0x6

    move/from16 v0, v18

    if-eq v5, v0, :cond_648

    :cond_6c0
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v5, v0, :cond_6e7

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto/16 :goto_65c

    :cond_6e7
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto/16 :goto_65c

    :cond_713
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_a7

    :pswitch_72a
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    if-eqz v18, :cond_762

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->length()I

    move-result v18

    if-eqz v18, :cond_762

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v18, "[0-9A-Fa-f]{64}"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7a0

    iput-object v10, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_762
    :goto_762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a7

    const-string/jumbo v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mWapiPskType.getSelectedItemPosition() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v19

    aget v6, v18, v19

    iput v6, v4, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_a7

    :cond_7a0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/String;->clear()V

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    iput-object v15, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_762

    :pswitch_7d3
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->set(I)V

    new-instance v18, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct/range {v18 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a7

    const-string/jumbo v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mWapiAsCert.getSelectedItemPosition() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mWapiAsCert.getSelectedItem() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8d4

    const-string/jumbo v16, ""

    :goto_86e
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiASCertificateAlias()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v18

    if-nez v18, :cond_889

    const-string/jumbo v16, ""

    :cond_889
    move-object/from16 v0, v16

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8ed

    const-string/jumbo v17, ""

    :goto_8a8
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiUserCertificateAlias(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificateAlias()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v18

    if-nez v18, :cond_8ce

    const-string/jumbo v17, ""

    :cond_8ce
    move-object/from16 v0, v17

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_a7

    :cond_8d4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "keystore://WAPIAS_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_86e

    :cond_8ed
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "keystore://WAPIUSR_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_8a8

    :cond_906
    const/16 v18, 0x0

    goto/16 :goto_f7

    :pswitch_data_90a
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_11e
        :pswitch_1b1
        :pswitch_26c
        :pswitch_72a
        :pswitch_7d3
    .end packed-switch

    :pswitch_data_91a
    .packed-switch 0x0
        :pswitch_450
        :pswitch_45b
        :pswitch_466
        :pswitch_471
        :pswitch_47c
        :pswitch_487
    .end packed-switch

    :pswitch_data_92a
    .packed-switch 0x0
        :pswitch_4da
        :pswitch_4e5
        :pswitch_4f0
    .end packed-switch
.end method

.method protected getDefaultEapFieldsIndex()I
    .registers 6

    const/4 v4, 0x3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    sget-object v2, Lcom/android/settings/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    const-string/jumbo v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v3, "SingTel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_38

    const/4 v0, 0x4

    :cond_37
    :goto_37
    return v0

    :cond_38
    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v3, "AIS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_37

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    const-string/jumbo v2, "52003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v0, 0x4

    goto :goto_37

    :cond_6d
    sget-object v2, Lcom/android/settings/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    const-string/jumbo v3, "AKA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_99

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v3, "SKT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_99

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v3, "KTT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_99
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->isVendorSsid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_37

    const/4 v0, 0x5

    goto :goto_37
.end method

.method public getMode()I
    .registers 2

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    return v0
.end method

.method protected hasSubmitButton()Z
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_a

    return v2

    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method hideEditButton()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method hideForgetButton()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method protected hideSoftKeyboard()V
    .registers 3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->hideSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method protected hideSoftKeyboard(Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "WifiConfigController"

    const-string/jumbo v1, "    **** hideSoftKeyboard *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method hideSubmitButton()V
    .registers 5

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1a
    return-void
.end method

.method public isNeedToReconnect()Z
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v4, :cond_14

    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_13

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "new network"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v7

    :cond_14
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v4

    if-nez v4, :cond_2a

    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_29

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "not active one"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return v7

    :cond_2a
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    if-eq v4, v5, :cond_3e

    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_3d

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "change ip assignment method by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return v6

    :cond_3e
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    if-eqz v4, :cond_62

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_61

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed ip address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return v6

    :cond_62
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    if-eqz v4, :cond_86

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_86

    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_85

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed gateway address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    return v6

    :cond_86
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    if-eqz v4, :cond_aa

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_aa

    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_a9

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed dns1 address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    return v6

    :cond_aa
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    if-eqz v4, :cond_ce

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ce

    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_cd

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed dns2 address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    return v6

    :cond_ce
    return v7
.end method

.method isSplitSystemUser()Z
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    return v1
.end method

.method isSubmittable()Z
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_c9

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v3, v7, :cond_bb

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_bb

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-ge v3, v5, :cond_bb

    :goto_20
    const/4 v2, 0x1

    :cond_21
    :goto_21
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v3, :cond_115

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_115

    :cond_2d
    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-ne v3, v6, :cond_41

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    :cond_41
    :goto_41
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v3, :cond_96

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_96

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0468

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_96

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const/4 v1, 0x0

    :cond_6a
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v3, :cond_96

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0469

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_96

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_96

    const/4 v1, 0x0

    :cond_96
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v3, :cond_ba

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a046f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_ba

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    const/4 v1, 0x0

    :cond_ba
    return v1

    :cond_bb
    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v3, v6, :cond_21

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_20

    :cond_c9
    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-ne v3, v7, :cond_f5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v3, :cond_21

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v3, v6, :cond_e0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_e0

    :goto_dd
    const/4 v2, 0x1

    goto/16 :goto_21

    :cond_e0
    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v3, v7, :cond_21

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-ge v3, v5, :cond_21

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_21

    goto :goto_dd

    :cond_f5
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v3, :cond_21

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v3, v6, :cond_108

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_108

    :goto_105
    const/4 v2, 0x1

    goto/16 :goto_21

    :cond_108
    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v3, v7, :cond_21

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-ge v3, v5, :cond_21

    goto :goto_105

    :cond_115
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_123

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_125

    :cond_123
    if-nez v2, :cond_2d

    :cond_125
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_133

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_133

    if-nez v2, :cond_2d

    :cond_133
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v1

    goto/16 :goto_41
.end method

.method protected isVendorSsid(Ljava/lang/String;)Z
    .registers 8

    const/4 v3, 0x0

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v2, v3

    :goto_c
    if-ge v2, v4, :cond_1f

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v2, 0x1

    return v2

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1f
    return v3
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 13

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    const v6, 0x7f0a07b3

    if-ne v5, v6, :cond_3c

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    if-eqz p2, :cond_37

    const/4 v5, 0x1

    :goto_14
    int-to-long v8, v5

    const v5, 0x7f120a76

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz p2, :cond_39

    const/16 v5, 0x90

    :goto_27
    or-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-ltz v3, :cond_33

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->updateImeOptionsForEditText()V

    return-void

    :cond_37
    const/4 v5, 0x0

    goto :goto_14

    :cond_39
    const/16 v5, 0x80

    goto :goto_27

    :cond_3c
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    const v6, 0x7f0a00b7

    if-ne v5, v6, :cond_69

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v5, :cond_33

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v5

    if-eqz v5, :cond_33

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    if-eqz p2, :cond_67

    const/4 v5, 0x1

    :goto_5c
    int-to-long v8, v5

    const v5, 0x7f120a5c

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController;->setAutoReconnectEnabled(Z)V

    goto :goto_33

    :cond_67
    const/4 v5, 0x0

    goto :goto_5c

    :cond_69
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    const v6, 0x7f0a0971

    if-ne v5, v6, :cond_a5

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    if-eqz p2, :cond_a0

    const/4 v5, 0x1

    :goto_7d
    int-to-long v8, v5

    const v5, 0x7f120a75

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0a096f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_a2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->hideSoftKeyboard()V

    :goto_93
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0a0970

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_33

    :cond_a0
    const/4 v5, 0x0

    goto :goto_7d

    :cond_a2
    const/16 v4, 0x8

    goto :goto_93

    :cond_a5
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    const v6, 0x7f0a09af

    if-ne v5, v6, :cond_e7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    if-eqz p2, :cond_e5

    const/4 v5, 0x1

    :goto_b9
    int-to-long v8, v5

    const v5, 0x7f120a66

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0a09af

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v5, :cond_33

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0a09a2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_33

    :cond_e5
    const/4 v5, 0x0

    goto :goto_b9

    :cond_e7
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    const v6, 0x7f0a09a2

    if-ne v5, v6, :cond_129

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    if-eqz p2, :cond_127

    const/4 v5, 0x1

    :goto_fb
    int-to-long v8, v5

    const v5, 0x7f120a65

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0a09a2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    if-eqz v5, :cond_33

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0a09af

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_33

    :cond_127
    const/4 v5, 0x0

    goto :goto_fb

    :cond_129
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    const v6, 0x7f0a0694

    if-ne v5, v6, :cond_33

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    if-eqz p2, :cond_155

    const/4 v5, 0x1

    :goto_13d
    int-to-long v8, v5

    const v5, 0x7f120a67

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    if-eqz p2, :cond_157

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0a0690

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_33

    :cond_155
    const/4 v5, 0x0

    goto :goto_13d

    :cond_157
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0a0690

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_33
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-ne p1, v0, :cond_14

    const/4 v0, 0x6

    if-ne p2, v0, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    int-to-long v2, p3

    const v4, 0x7f120a6a

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    :goto_1b
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->showWarningMessagesIfAppropriate()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->updateImeOptionsForEditText()V

    return-void

    :cond_25
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eq p1, v0, :cond_2d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_31

    :cond_2d
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_1b

    :cond_31
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_41

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_41

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showPeapFields()V

    goto :goto_1b

    :cond_41
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_58

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    int-to-long v2, p3

    const v4, 0x7f120a69

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_1b

    :cond_58
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    int-to-long v2, p3

    const v4, 0x7f120a68

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_1b
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-ne p1, v0, :cond_19

    const/16 v0, 0x42

    if-eq p2, v0, :cond_c

    const/16 v0, 0xa0

    if-ne p2, v0, :cond_19

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    const/4 v0, 0x1

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
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

.method protected setInvisibleAutoReconnectView()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected setVisibleAutoReconnectView()V
    .registers 5

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_AUTO_RECONNECT:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    :cond_12
    sget-boolean v1, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v1, :cond_17

    return-void

    :cond_17
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v1

    if-nez v1, :cond_31

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_32

    :cond_31
    return-void

    :cond_32
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a00b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a00b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    if-nez v1, :cond_6d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_6d
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected setupAdvancedOptionsView()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a096f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0971

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method protected setupApInformation()V
    .registers 16

    const v14, 0x7f122087

    const v13, 0x7f121ee4

    const v11, 0x7f0a0429

    const/4 v12, 0x0

    const/4 v3, 0x0

    iget v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-nez v9, :cond_ec

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    :goto_17
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v9

    if-eqz v9, :cond_4b

    if-eqz v5, :cond_4b

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v9

    if-lez v9, :cond_4b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "Mbps"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v9, 0x7f122155

    invoke-direct {p0, v3, v9, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_4b
    move-object v4, v3

    iget v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v9, :cond_58

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    :cond_58
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9, v12}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f122107

    invoke-direct {p0, v4, v10, v9}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v9

    if-eqz v9, :cond_eb

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v9

    sget-object v10, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v9, v10, :cond_f9

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v8

    if-eqz v8, :cond_91

    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v9, :cond_91

    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v9}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v14, v9}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_91
    :goto_91
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v9

    if-eqz v9, :cond_b1

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v10, 0x7f12142e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f12142f

    invoke-direct {p0, v3, v10, v9}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_b1
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_AP_LINK"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_eb

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    check-cast v9, Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v9, v9, Lcom/android/settings/wifi/WifiDialog;->isSetupWizard:Z

    if-nez v9, :cond_eb

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v9, :cond_eb

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_eb

    iget-boolean v9, v1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-nez v9, :cond_17a

    iget v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_eb

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_eb

    invoke-virtual {p0, v3, v13}, Lcom/android/settings/wifi/WifiConfigController;->addGatewayRow(Landroid/view/ViewGroup;I)V

    :cond_eb
    :goto_eb
    return-void

    :cond_ec
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0a0970

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto/16 :goto_17

    :cond_f9
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    if-eqz v2, :cond_118

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v9, :cond_118

    iget v9, v2, Landroid/net/DhcpInfo;->ipAddress:I

    if-eqz v9, :cond_118

    iget v9, v2, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v14, v9}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_118
    sget-boolean v9, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v9, :cond_91

    iget v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-nez v9, :cond_91

    iget v9, v2, Landroid/net/DhcpInfo;->netmask:I

    if-eqz v9, :cond_130

    iget v9, v2, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f1220ad

    invoke-direct {p0, v3, v10, v9}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_130
    iget v9, v2, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v9, :cond_140

    iget v9, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f12206d

    invoke-direct {p0, v3, v10, v9}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_140
    iget v9, v2, Landroid/net/DhcpInfo;->dns1:I

    if-eqz v9, :cond_150

    iget v9, v2, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f122040

    invoke-direct {p0, v3, v10, v9}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_150
    iget v9, v2, Landroid/net/DhcpInfo;->dns2:I

    if-eqz v9, :cond_160

    iget v9, v2, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f122042

    invoke-direct {p0, v3, v10, v9}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_160
    if-eqz v5, :cond_91

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_91

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_91

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f121f66

    invoke-direct {p0, v3, v10, v9}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_91

    :cond_17a
    invoke-direct {p0, v4, v13}, Lcom/android/settings/wifi/WifiConfigController;->addCaptivePortalRow(Landroid/view/ViewGroup;I)V

    goto/16 :goto_eb
.end method

.method protected setupConnectionWarningView()V
    .registers 7

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a051a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_32

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const v4, 0x7f12191b

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_32
    return-void
.end method

.method protected setupEapPhase()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0626

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const v1, 0x7f030144

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0627

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const v1, 0x7f030145

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method protected setupIpAndProxySettings()V
    .registers 4

    const v2, 0x7f0a0694

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0435

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const v1, 0x7f03013e

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a069b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const v1, 0x7f030148

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0693

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method protected setupPasswordView()V
    .registers 8

    const/4 v6, 0x1

    const v5, 0x7f0a07b3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0613

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a09b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f122060

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x8000

    invoke-virtual {v0, v1, v4}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_b9

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_ad

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v2, 0x7f12067b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_ad
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-eq v0, v6, :cond_b9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f1221bc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    :cond_b9
    return-void
.end method

.method protected setupSecuritySpinner()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0772

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    const v1, 0x7f030158

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    const v1, 0x7f03014b

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    goto :goto_30
.end method

.method protected setupSsidView()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0806

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a09cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const v1, 0x7f122179

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const v1, 0x8000

    invoke-virtual {v0, v1, v4}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method protected showKeyMgmtFields()V
    .registers 9

    const v7, 0x7f0a09b3

    const v6, 0x7f0a09b0

    const v5, 0x7f0a09af

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_5d

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_53

    :cond_1a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_23
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a09a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_52
    return-void

    :cond_53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_23

    :cond_5d
    const-string/jumbo v0, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accessPoint.keyMgmts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isFTOnlyType()Z

    move-result v0

    if-eqz v0, :cond_143

    :cond_b9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_c2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isFTOnlyType()Z

    move-result v0

    if-eqz v0, :cond_14e

    :cond_ec
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11f

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isFTOnlyType()Z

    move-result v0

    if-eqz v0, :cond_133

    :cond_11f
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_133
    :goto_133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a09a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_52

    :cond_143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c2

    :cond_14e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_133
.end method

.method protected showSoftKeyboard()V
    .registers 5

    sget-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v1, :cond_20

    const-string/jumbo v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSoftKeyboard requestHideKeyboard:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsRequestHideKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsRequestHideKeyboard:Z

    if-eqz v1, :cond_25

    return-void

    :cond_25
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_3f

    const-string/jumbo v1, "WifiConfigController"

    const-string/jumbo v2, "    **** showSoftKeyboard : ignored (Accessory Keyboard Mode) *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    const-string/jumbo v1, "WifiConfigController"

    const-string/jumbo v2, "    **** showSoftKeyboard *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_3e
.end method

.method public showSoftKeyboardOnResume()V
    .registers 9

    const-wide/16 v6, 0xc8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2f

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_30

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wifi/WifiConfigController$4;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/WifiConfigController$4;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    new-instance v3, Lcom/android/settings/wifi/WifiConfigController$5;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/WifiConfigController$5;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/view/View;)V

    invoke-virtual {v1, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f
.end method

.method showWarningMessagesIfAppropriate()V
    .registers 8

    const v6, 0x7f0a05ba

    const v5, 0x7f0a05b8

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0468

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_9c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapNoCaCertWarningText:Landroid/widget/TextView;

    const v2, 0x7f122046

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4f
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapNoCaCertWarningText:Landroid/widget/TextView;

    const v2, 0x7f122151

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_68
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0469

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_9c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9c
    return-void
.end method

.method protected updateImeOptionsForEditText()V
    .registers 10

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiConfigController;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    sget-boolean v6, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v6, :cond_47

    const-string/jumbo v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateImeOptions - prev:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " new:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    :goto_4e
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_b0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_70

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_70
    if-eqz v2, :cond_ad

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v7

    if-ne v6, v7, :cond_ad

    sget-boolean v6, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v6, :cond_a0

    const-string/jumbo v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateImeOptions - active:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v6

    if-eqz v6, :cond_ad

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_ad
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_b0
    if-eqz v2, :cond_e3

    instance-of v6, v2, Landroid/widget/EditText;

    if-eqz v6, :cond_e3

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d5

    sget-boolean v6, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v6, :cond_cd

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "updateImeOptions - focused view is invisible"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->hideSoftKeyboard()V

    :cond_d0
    :goto_d0
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    return-void

    :cond_d5
    sget-boolean v6, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v6, :cond_d0

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "updateImeOptions - focused view is visible"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    :cond_e3
    sget-boolean v6, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v6, :cond_f0

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "updateImeOptions - focused view is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f0
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v6

    if-eqz v6, :cond_d0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_fc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_fc

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->hideSoftKeyboard(Landroid/view/View;)V

    goto :goto_d0
.end method

.method public updatePassword()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0613

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a07b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v1, 0x90

    :goto_1e
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_24
    const/16 v1, 0x80

    goto :goto_1e
.end method
