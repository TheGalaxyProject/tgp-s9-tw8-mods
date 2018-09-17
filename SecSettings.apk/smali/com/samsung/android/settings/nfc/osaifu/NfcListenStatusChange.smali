.class public Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcListenStatusChange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$1;,
        Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;,
        Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;,
        Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;
    }
.end annotation


# instance fields
.field private alertDialog:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mFeliCaLock:Z

.field mHandler:Landroid/os/Handler;

.field mHandlerBF:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field private final mOnPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mSelectAccount:Ljava/lang/String;

.field private mSetReceiver:Z

.field private mUimLock:Z

.field private pNFcTypeABF:Landroid/support/v7/preference/CheckBoxPreference;

.field private pNFcTypeAF:Landroid/support/v7/preference/CheckBoxPreference;

.field private pNFcTypeBF:Landroid/support/v7/preference/CheckBoxPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/app/AlertDialog$Builder;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mFeliCaLock:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/nfc/NfcAdapter;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mUimLock:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/support/v7/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeABF:Landroid/support/v7/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/support/v7/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeAF:Landroid/support/v7/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/support/v7/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeBF:Landroid/support/v7/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mFeliCaLock:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mUimLock:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->createScreen()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->startHandlerBF()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->startHandler()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mFeliCaLock:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mUimLock:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mSetReceiver:Z

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeABF:Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeAF:Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeBF:Landroid/support/v7/preference/CheckBoxPreference;

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$1;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mOnPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private createCheckBox(Landroid/support/v7/preference/CheckBoxPreference;Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mOnPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private createScreen()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeABF:Landroid/support/v7/preference/CheckBoxPreference;

    const-string/jumbo v1, "00001,0"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->createCheckBox(Landroid/support/v7/preference/CheckBoxPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeAF:Landroid/support/v7/preference/CheckBoxPreference;

    const-string/jumbo v1, "00001,1"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->createCheckBox(Landroid/support/v7/preference/CheckBoxPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeBF:Landroid/support/v7/preference/CheckBoxPreference;

    const-string/jumbo v1, "00001,2"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->createCheckBox(Landroid/support/v7/preference/CheckBoxPreference;Ljava/lang/String;)V

    return-void
.end method

.method private loadSelectRadioButton()V
    .registers 3

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getNfcTypeSettings()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :goto_9
    return-void

    :pswitch_a
    const-string/jumbo v1, "00001,0"

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    goto :goto_9

    :pswitch_10
    const-string/jumbo v1, "00001,1"

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    goto :goto_9

    :pswitch_16
    const-string/jumbo v1, "00001,2"

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    goto :goto_9

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method

.method private startHandler()V
    .registers 2

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;->start()V

    return-void
.end method

.method private startHandlerBF()V
    .registers 2

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;->start()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x2526

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->startHandler()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f1500a1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->addPreferencesFromResource(I)V

    const v1, 0x7f1212f9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mRootPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mHandlerBF:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.sec.android.intent.action.EF_LOCK_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.sec.android.intent.action.EF_LOCK_UPDATED_INTERNAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_48
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-instance v1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    const v1, 0x7f121294

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeABF:Landroid/support/v7/preference/CheckBoxPreference;

    const v1, 0x7f121295

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeAF:Landroid/support/v7/preference/CheckBoxPreference;

    const v1, 0x7f121296

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeBF:Landroid/support/v7/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeABF:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeAF:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->pNFcTypeBF:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f121326

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1208a6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$3;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f12089f

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$4;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mSetReceiver:Z

    if-eqz v0, :cond_34

    const-string/jumbo v0, "[NfcListenStatus]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ON -> OFF mSetReceiver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mSetReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mSetReceiver:Z

    :cond_34
    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->loadSelectRadioButton()V

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->createScreen()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mSetReceiver:Z

    if-nez v0, :cond_3c

    const-string/jumbo v0, "[NfcListenStatus]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OFF -> ON mSetReceiver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mSetReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mSetReceiver:Z

    :cond_3c
    return-void
.end method
