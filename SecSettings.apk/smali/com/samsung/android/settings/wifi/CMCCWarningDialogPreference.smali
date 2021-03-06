.class public Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;
.super Lcom/android/settings/CustomDialogPreference;
.source "CMCCWarningDialogPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private aplist_do_not_show_again:Z

.field private asktowlan_do_not_show_again:Z

.field private cmccap_do_not_show_again:Z

.field private mAlwaysaskcheckbox:Landroid/widget/CheckBox;

.field private mAplistcheckbox:Landroid/widget/CheckBox;

.field private mCmccapcheckbox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mFightmodecheckbox:Landroid/widget/CheckBox;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->cmccap_do_not_show_again:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->aplist_do_not_show_again:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->asktowlan_do_not_show_again:Z

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->initDialog()V

    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string/jumbo v0, "CMCC_wifi_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private initDialog()V
    .registers 2

    const v0, 0x7f0d0077

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->setDialogLayoutResource(I)V

    const v0, 0x7f1205dd

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->setPositiveButtonText(I)V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x7f0a018e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mCmccapcheckbox:Landroid/widget/CheckBox;

    const v0, 0x7f0a09d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mAplistcheckbox:Landroid/widget/CheckBox;

    const v0, 0x7f0a032b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mFightmodecheckbox:Landroid/widget/CheckBox;

    const v0, 0x7f0a007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mAlwaysaskcheckbox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "cmccap_do_not_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->cmccap_do_not_show_again:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "aplist_do_not_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->aplist_do_not_show_again:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "asktowlan_do_not_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->asktowlan_do_not_show_again:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mCmccapcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mAplistcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mFightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mAlwaysaskcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mCmccapcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mFightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mAlwaysaskcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mAplistcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mCmccapcheckbox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->cmccap_do_not_show_again:Z

    if-eqz v0, :cond_bf

    move v0, v1

    :goto_89
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mAlwaysaskcheckbox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->asktowlan_do_not_show_again:Z

    if-eqz v0, :cond_c1

    move v0, v1

    :goto_93
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "aplist_dont_show_again"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mAplistcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_aa
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "tw_globalactions_dont_show_again"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mFightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_be
    return-void

    :cond_bf
    move v0, v2

    goto :goto_89

    :cond_c1
    move v0, v2

    goto :goto_93

    :cond_c3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mAplistcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_aa

    :cond_c9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mFightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_be
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f0a018e

    if-ne v3, v4, :cond_35

    const-string/jumbo v1, "CMCCWarningDialogPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cmcc_wlan checked. - BUTTON ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "cmccap_do_not_show"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_34
    :goto_34
    return-void

    :cond_35
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f0a032b

    if-ne v3, v4, :cond_74

    const-string/jumbo v3, "CMCCWarningDialogPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fight_mode checked. - BUTTON ,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_67

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "tw_globalactions_dont_show_again"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_34

    :cond_67
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tw_globalactions_dont_show_again"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_34

    :cond_74
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f0a007c

    if-ne v3, v4, :cond_a1

    const-string/jumbo v1, "CMCCWarningDialogPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "alwaysask checked. - BUTTON ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "asktowlan_do_not_show"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_34

    :cond_a1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f0a09d4

    if-ne v3, v4, :cond_34

    const-string/jumbo v3, "CMCCWarningDialogPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wlan_aplist checked. - BUTTON ,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_e2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aplist_dont_show_again"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_d2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_networks_available_notification_on"

    if-eqz p2, :cond_ef

    :goto_dd
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_34

    :cond_e2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aplist_dont_show_again"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_d2

    :cond_ef
    move v1, v2

    goto :goto_dd
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    packed-switch p2, :pswitch_data_18

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    const-string/jumbo v1, "CMCCWarningDialogPreference"

    const-string/jumbo v2, "Selected button is Yes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3

    nop

    :pswitch_data_18
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onDialogClosed(Z)V
    .registers 8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mCmccapcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v1, 0x1

    :goto_a
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mAplistcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_47

    const/16 v3, 0xa

    :goto_14
    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mAlwaysaskcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_49

    const/16 v1, 0x64

    :goto_1f
    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mFightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2a

    const/16 v2, 0x3e8

    :cond_2a
    add-int v0, v1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const v4, 0x7f12179b

    const v5, 0x7f120a15

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    return-void

    :cond_45
    move v1, v2

    goto :goto_a

    :cond_47
    move v3, v2

    goto :goto_14

    :cond_49
    move v1, v2

    goto :goto_1f
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/settings/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1205df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
