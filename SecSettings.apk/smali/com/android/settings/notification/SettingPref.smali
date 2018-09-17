.class public Lcom/android/settings/notification/SettingPref;
.super Ljava/lang/Object;
.source "SettingPref.java"


# instance fields
.field protected final mDefault:I

.field protected mDropDown:Landroid/support/v7/preference/DropDownPreference;

.field private final mKey:Ljava/lang/String;

.field protected mSecDropDown:Lcom/android/settings/SecDropDownPreference;

.field protected final mSetting:Ljava/lang/String;

.field protected mTwoState:Landroid/support/v7/preference/TwoStatePreference;

.field protected final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:[I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    iput-object p2, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/notification/SettingPref;->mDefault:I

    iput-object p5, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/SettingPref;->getUriFor(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    return-void
.end method

.method protected static getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 5

    packed-switch p0, :pswitch_data_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_9
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    :pswitch_e
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_9
        :pswitch_e
    .end packed-switch
.end method

.method private static getUriFor(ILjava/lang/String;)Landroid/net/Uri;
    .registers 3

    packed-switch p0, :pswitch_data_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_9
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_9
        :pswitch_e
    .end packed-switch
.end method

.method protected static putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 5

    packed-switch p0, :pswitch_data_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_9
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :pswitch_e
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_9
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;
    .registers 10

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_22

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v3, 0x0

    return-object v7

    :cond_22
    instance-of v5, v3, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v5, :cond_3d

    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/TwoStatePreference;

    iput-object v5, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    :cond_2b
    :goto_2b
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v5, :cond_99

    new-instance v5, Lcom/android/settings/notification/SettingPref$1;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/notification/SettingPref$1;-><init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    return-object v5

    :cond_3d
    instance-of v5, v3, Landroid/support/v7/preference/DropDownPreference;

    if-nez v5, :cond_45

    instance-of v5, v3, Lcom/android/settings/SecDropDownPreference;

    if-eqz v5, :cond_2b

    :cond_45
    instance-of v5, v3, Lcom/android/settings/SecDropDownPreference;

    if-eqz v5, :cond_79

    move-object v5, v3

    check-cast v5, Lcom/android/settings/SecDropDownPreference;

    iput-object v5, p0, Lcom/android/settings/notification/SettingPref;->mSecDropDown:Lcom/android/settings/SecDropDownPreference;

    :goto_4e
    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    array-length v5, v5

    new-array v1, v5, [Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    array-length v5, v5

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    :goto_59
    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    array-length v5, v5

    if-ge v2, v5, :cond_7f

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    aget v6, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/notification/SettingPref;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_79
    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/DropDownPreference;

    iput-object v5, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    goto :goto_4e

    :cond_7f
    instance-of v5, v3, Lcom/android/settings/SecDropDownPreference;

    if-eqz v5, :cond_8e

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mSecDropDown:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v5, v1}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mSecDropDown:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_2b

    :cond_8e
    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_2b

    :cond_99
    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v5, :cond_a8

    new-instance v5, Lcom/android/settings/notification/SettingPref$2;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/notification/SettingPref$2;-><init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    return-object v5

    :cond_a8
    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mSecDropDown:Lcom/android/settings/SecDropDownPreference;

    if-eqz v5, :cond_b7

    new-instance v5, Lcom/android/settings/notification/SettingPref$3;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/notification/SettingPref$3;-><init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mSecDropDown:Lcom/android/settings/SecDropDownPreference;

    return-object v5

    :cond_b7
    return-object v7
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method protected setSetting(Landroid/content/Context;I)Z
    .registers 6

    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/android/settings/notification/SettingPref;->putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/Context;)V
    .registers 8

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/notification/SettingPref;->mDefault:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/notification/SettingPref;->getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1b

    :cond_2a
    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mSecDropDown:Lcom/android/settings/SecDropDownPreference;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mSecDropDown:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1b
.end method
