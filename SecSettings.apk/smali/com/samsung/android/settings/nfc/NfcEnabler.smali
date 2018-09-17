.class public Lcom/samsung/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcEnabler$1;
    }
.end annotation


# static fields
.field private static mIconType:Ljava/lang/String;


# instance fields
.field private isAndroidBeamAllowed:I

.field private isNFCEnabled:I

.field private isNFCStateChangeAllowed:I

.field mAlert:Landroid/app/AlertDialog;

.field private final mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

.field private mBeamDisallowedBySystem:Z

.field private final mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

.field private final mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

.field private final mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mPaymentSim:Landroid/support/v7/preference/SecPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/NfcEnabler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateABeamChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_StatusBarIconType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SecSwitchPreference;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_2e

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_2e
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;Landroid/support/v7/preference/SecPreferenceScreen;Landroid/support/v7/preference/SecPreference;Landroid/support/v7/preference/PreferenceScreen;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V
    .registers 14

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iput-object p6, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p7, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object p8, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    iput-object p5, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v0, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    const-string/jumbo v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBeamDisallowedBySystem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_71
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_7a
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_9c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_a6
    return-void
.end method

.method private checkKnox()V
    .registers 6

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "false"

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v3, "isNFCEnabled"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCEnabled:I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider2/MiscPolicy"

    const-string/jumbo v3, "isNFCStateChangeAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v3, "isAndroidBeamAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    const-string/jumbo v1, "NfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNFCEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , isNFCStateChangeAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , isAndroidBeamAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCEnabled:I

    if-nez v1, :cond_a3

    const-string/jumbo v1, "NfcEnabler"

    const-string/jumbo v2, "EDM : NFC not allowed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_7f
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_88
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_91
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_9a
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v1, :cond_a3

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_a3
    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    if-nez v1, :cond_cb

    const-string/jumbo v1, "NfcEnabler"

    const-string/jumbo v2, "EDM : NFC state change not allowed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_b9
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_c2

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_c2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_cb

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_cb
    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    if-nez v1, :cond_e1

    const-string/jumbo v1, "NfcEnabler"

    const-string/jumbo v2, "EDM : AndroidBeam not allowed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v1, :cond_e1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_e1
    return-void
.end method

.method private getBeamShareActivityState()Z
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.nfc"

    const-string/jumbo v3, "com.android.nfc.BeamShareActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android"

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_27} :catch_2c

    move-result v2

    if-eq v2, v7, :cond_2b

    return v6

    :cond_2b
    return v7

    :catch_2c
    move-exception v1

    const-string/jumbo v2, "NfcEnabler"

    const-string/jumbo v3, "Failed to retrieve PackageManager for user"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private handleNfcStateABeamChanged()V
    .registers 4

    const-string/jumbo v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBeamDisallowedBySystem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getBeamShareActivityState()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "NfcEnabler"

    const-string/jumbo v1, " beamshare state is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_49

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getBeamShareActivityState()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const v1, 0x7f121b7e

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    :cond_49
    :goto_49
    return-void

    :cond_4a
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const v1, 0x7f121b7d

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_49
.end method

.method private handleNfcStateChanged(I)V
    .registers 8

    const v5, 0x7f121b7d

    const v4, 0x7f121b7e

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_2de

    :cond_c
    :goto_c
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->checkKnox()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_27
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M>NFC_OFF</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_55
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_63
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_71
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v1, 0x7f1212f1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_8c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_c

    :cond_97
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_4c

    :pswitch_a1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_af
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_c1

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_154

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_c1
    :goto_c1
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_d0

    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M>NFC_ON</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_e6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_f7
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_100
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_10e

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_10e
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_11c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_13d

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v0

    if-eqz v0, :cond_15e

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v1, 0x7f1212f5

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_13d
    :goto_13d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_164

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_164

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_c

    :cond_154
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const-string/jumbo v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto/16 :goto_c1

    :cond_15e
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_13d

    :cond_164
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_c

    :pswitch_16b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_179

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_179
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_182

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_182
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_18b

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_18b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_194

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_194
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_1a2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_1a2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_1b0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_1b0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_1cb

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v1, 0x7f1212f1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_1cb
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_c

    :pswitch_1d6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1e4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1e4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_1ed

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_1ed
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_1f6

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_1f6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_1ff

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_1ff
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_20d

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_20d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_21b

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_21b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_23c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v0

    if-eqz v0, :cond_247

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v1, 0x7f1212f5

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_23c
    :goto_23c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_c

    :cond_247
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_23c

    :pswitch_24d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_25b

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_25b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_264

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_264
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_276

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_2cd

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_271
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_276
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_27f

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_27f
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_28d

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_28d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_29b

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_29b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_2b6

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v1, 0x7f121293

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_2b6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_2d6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_2d6

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_c

    :cond_2cd
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const-string/jumbo v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_271

    :cond_2d6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_c

    nop

    :pswitch_data_2de
    .packed-switch 0x1
        :pswitch_10
        :pswitch_16b
        :pswitch_a1
        :pswitch_1d6
        :pswitch_24d
    .end packed-switch
.end method

.method private isNfcTurnOn()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    return v0

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    const/4 v0, 0x0

    return v0
.end method

.method private makeAlertDialog(Ljava/lang/String;)V
    .registers 6

    move-object v0, p1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "NfcSettingsOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const v2, 0x7f1212a6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f12055f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_1d
    :goto_1d
    new-instance v2, Lcom/samsung/android/settings/nfc/NfcEnabler$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$2;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Ljava/lang/String;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/nfc/NfcEnabler$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$3;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/nfc/NfcEnabler$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$4;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_46
    const-string/jumbo v2, "AndroidBeamOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const v2, 0x7f120188

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120fa1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1d

    :cond_5c
    const-string/jumbo v2, "RwOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const v2, 0x7f120cbb

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1212f0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1d
.end method


# virtual methods
.method public chinaDisabled_offslot(I)Z
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "phone1_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_78

    const/4 v0, 0x1

    :goto_12
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "phone2_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_7a

    const/4 v1, 0x1

    :goto_22
    const-string/jumbo v4, "ril.ICC_TYPE0"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ril.ICC_TYPE1"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NfcEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SimState_1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "NfcEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SimState_2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_7c

    if-eqz v0, :cond_77

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a

    :cond_77
    return v7

    :cond_78
    const/4 v0, 0x0

    goto :goto_12

    :cond_7a
    const/4 v1, 0x0

    goto :goto_22

    :cond_7c
    if-ne p1, v7, :cond_8a

    if-eqz v1, :cond_89

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a

    :cond_89
    return v7

    :cond_8a
    return v8
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const v7, 0x7f0b0369

    const v6, 0x7f0b0121

    const/16 v5, 0x3e8

    const/4 v4, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const-string/jumbo v2, "NfcEnabler"

    const-string/jumbo v3, "onPreferenceChange - NfcSetting switch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    if-nez v2, :cond_2e

    const-string/jumbo v2, "NfcEnabler"

    const-string/jumbo v3, "EDM : NFC state change not allowed. so can\'t change toggle button"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2e
    if-eqz v0, :cond_55

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_40
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_53
    :goto_53
    const/4 v2, 0x1

    return v2

    :cond_55
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v2

    if-eqz v2, :cond_62

    const-string/jumbo v2, "NfcSettingsOff"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_53

    :cond_62
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disable()Z

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_53

    :cond_7b
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const/4 v1, 0x0

    const-string/jumbo v2, "NfcEnabler"

    const-string/jumbo v3, "onPreferenceChange - AndroidBeam switch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_b8

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const v3, 0x7f121b7e

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_b0
    if-eqz v1, :cond_53

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_53

    :cond_b8
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v2

    if-eqz v2, :cond_c5

    const-string/jumbo v2, "AndroidBeamOff"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_b0

    :cond_c5
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const v3, 0x7f121b7d

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_b0
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    const-string/jumbo v0, "RwOff"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-ne p1, v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b036b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_1f
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 7

    const v3, 0x7f0b036a

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNfcTurnOn()Z

    move-result v0

    if-ne v0, p2, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    if-eqz p2, :cond_3b

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_37
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->checkKnox()V

    return-void

    :cond_3b
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo v0, "NfcSettingsOff"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_37

    :cond_48
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_37
.end method

.method public pause()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_28
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    :cond_3a
    return-void
.end method

.method public resume()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateABeamChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_23
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_35
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    :cond_47
    return-void
.end method
