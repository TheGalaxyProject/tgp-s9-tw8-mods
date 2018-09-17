.class public Lcom/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcEnabler$1;
    }
.end annotation


# instance fields
.field private final mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

.field private mBeamDisallowedBySystem:Z

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/nfc/NfcEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const-string/jumbo v0, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    iput-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_36
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_3f
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_82

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const v1, 0x7f120180

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_5

    :pswitch_1e
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :goto_37
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const v1, 0x7f120186

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_5

    :cond_50
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const-string/jumbo v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_37

    :cond_59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const v1, 0x7f120185

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_5

    :pswitch_62
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_5

    :pswitch_72
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_5

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6
        :pswitch_62
        :pswitch_1e
        :pswitch_72
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    const/4 v2, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    :goto_13
    return v2

    :cond_14
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_13
.end method

.method public pause()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public resume()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
