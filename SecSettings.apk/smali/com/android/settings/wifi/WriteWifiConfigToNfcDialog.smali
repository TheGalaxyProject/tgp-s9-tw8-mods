.class Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;
.super Landroid/app/AlertDialog;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final hexArray:[C


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mContinueButton:Landroid/widget/Button;

.field private mLabelView:Landroid/widget/TextView;

.field private mNfcTaggingImage:Landroid/widget/ImageView;

.field private mNfcTaggingImageForGrace:Landroid/widget/ImageView;

.field private mOnTextChangedHandler:Landroid/os/Handler;

.field private mPasswordCheckBox:Landroid/widget/CheckBox;

.field private mPasswordCheckBoxLayout:Landroid/widget/LinearLayout;

.field private mPasswordErrorView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/EditText;

.field private mSecurity:I

.field private mSubmitButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiManager:Lcom/android/settings/wifi/WifiManagerWrapper;

.field private mWpsNfcConfigurationToken:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContinueButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNfcTaggingImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->enableSubmitIfAppropriate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;Landroid/nfc/Tag;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->handleWriteNfcEvent(Landroid/nfc/Tag;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->readyToWriteWifiConfigToNfc()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexArray:[C

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigEncodingCharSet"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/android/settings/wifi/WifiManagerWrapper;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "WriteWifiConfigToNfcDialog:wakeLock"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mOnTextChangedHandler:Landroid/os/Handler;

    iput p2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    iput-object p3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWifiManager:Lcom/android/settings/wifi/WifiManagerWrapper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/settings/wifi/WifiManagerWrapper;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "WriteWifiConfigToNfcDialog:wakeLock"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mOnTextChangedHandler:Landroid/os/Handler;

    const-string/jumbo v0, "security"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    iput-object p3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWifiManager:Lcom/android/settings/wifi/WifiManagerWrapper;

    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .registers 7

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    const/4 v1, 0x0

    :goto_6
    array-length v3, p0

    if-ge v1, v3, :cond_26

    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private enableSubmitIfAppropriate()V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_31

    iget v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    if-ne v2, v0, :cond_1a

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_18

    :goto_14
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    move v0, v1

    goto :goto_14

    :cond_1a
    iget v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_2f

    :goto_2b
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_17

    :cond_2f
    move v0, v1

    goto :goto_2b

    :cond_31
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_17
.end method

.method private handleWriteNfcEvent(Landroid/nfc/Tag;)V
    .registers 9

    const v5, 0x7f121a73

    const v6, 0x7f121a5e

    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    if-eqz v2, :cond_76

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_68

    const-string/jumbo v4, "application/vnd.wfa.wsc"

    iget-object v5, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWpsNfcConfigurationToken:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v3

    :try_start_1f
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    new-instance v4, Landroid/nfc/NdefMessage;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/nfc/NdefRecord;

    invoke-direct {v4, v3, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    invoke-virtual {v2, v4}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    const v5, 0x7f121a79

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mCancelButton:Landroid/widget/Button;

    const v5, 0x10402cc

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_49} :catch_59
    .catch Landroid/nfc/FormatException; {:try_start_1f .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v6}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to write Wi-Fi config to NFC tag."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_59
    move-exception v1

    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v6}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to write Wi-Fi config to NFC tag."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_68
    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Tag is not writable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_76
    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Tag does not support NDEF"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8

    const/16 v6, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_2a

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    :cond_2a
    return-object v0
.end method

.method private readyToWriteWifiConfigToNfc()V
    .registers 9

    const/4 v7, 0x0

    const/16 v6, 0x8

    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$2;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_72

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    const v4, 0x7f121a52

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_53
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v4, 0x7f0a061a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNfcTaggingImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mCancelButton:Landroid/widget/Button;

    const/high16 v4, 0x1040000

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_72
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    const v4, 0x7f121a53

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_53
.end method

.method private setViewText(Landroid/widget/TextView;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$5;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public dismiss()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->releaseWakeLock()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-eqz v2, :cond_10

    :try_start_d
    invoke-virtual {v2, v0}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_10} :catch_14

    :cond_10
    :goto_10
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :catch_14
    move-exception v1

    sget-object v3, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " IllegalStateException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0a07b3

    if-ne v1, v2, :cond_21

    iget-object v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz p2, :cond_22

    const/16 v1, 0x90

    :goto_15
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    if-ltz v0, :cond_21

    iget-object v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_21
    return-void

    :cond_22
    const/16 v1, 0x80

    goto :goto_15
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    const/4 v7, 0x0

    const/16 v6, 0x10

    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWifiManager:Lcom/android/settings/wifi/WifiManagerWrapper;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiManagerWrapper;->getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_4f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    :goto_2e
    const-string/jumbo v4, "102700%s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_6c

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6c

    iput-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWpsNfcConfigurationToken:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->readyToWriteWifiConfigToNfc()V

    :goto_4e
    return-void

    :cond_4f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    :cond_6c
    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    const v5, 0x7f1221e7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0602a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d03c7

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setInverseBackgroundForced(Z)V

    const v0, 0x7f1218f8

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setTitle(I)V

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f122229

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v2, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f122229

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0613

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0619

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0617

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a07b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a07b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBoxLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBoxLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0891

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNfcTaggingImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0892

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNfcTaggingImageForGrace:Landroid/widget/ImageView;

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContinueButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContinueButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mCancelButton:Landroid/widget/Button;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11

    const/16 v3, 0x3f

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4f

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    const v3, 0x7f121135

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0602a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :goto_44
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mOnTextChangedHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$4;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$4;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4f
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_44
.end method

.method public releaseWakeLock()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_d
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "security"

    iget v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
