.class public Lcom/android/settings/KnoxActiveProtectionEulaActivity;
.super Landroid/app/Activity;
.source "KnoxActiveProtectionEulaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnNextReboot:Landroid/widget/Button;

.field private btnRebootNow:Landroid/widget/Button;

.field private chkConfirm:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

.field private tvEula:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/settings/KnoxActiveProtectionEulaActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    return-void
.end method

.method private isKoreaCountryCode()Z
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "KOREA"

    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_c6

    :goto_9
    return-void

    :sswitch_a
    :try_start_a
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_1d

    goto :goto_9

    :catch_1d
    move-exception v0

    const-string/jumbo v1, "KnoxActiveProtectionEulaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "btn_reboot_now : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_3d
    :try_start_3d
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/KnoxActiveProtectionEulaActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity$1;-><init>(Lcom/android/settings/KnoxActiveProtectionEulaActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_57} :catch_1d

    goto :goto_9

    :sswitch_58
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V

    goto :goto_9

    :sswitch_61
    :try_start_61
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnablePending()Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    :cond_70
    :goto_70
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_73} :catch_74

    goto :goto_9

    :catch_74
    move-exception v0

    const-string/jumbo v1, "KnoxActiveProtectionEulaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "btn_cancel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_95
    :try_start_95
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a4} :catch_74

    goto :goto_70

    :sswitch_a5
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_9

    :cond_b9
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_9

    nop

    :sswitch_data_c6
    .sparse-switch
        0x7f0a011b -> :sswitch_61
        0x7f0a011e -> :sswitch_58
        0x7f0a011f -> :sswitch_a
        0x7f0a0456 -> :sswitch_a5
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0d0160

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1c

    const v2, 0x7f120e96

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1c
    new-instance v2, Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-direct {v2}, Lcom/android/settings/KnoxActiveProtectionStatus;-><init>()V

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const v2, 0x7f0a0458

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->isKoreaCountryCode()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    const v3, 0x7f120e91

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_3c
    const v2, 0x7f0a011f

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :try_start_51
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v2}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    const v3, 0x7f1213e0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_61} :catch_97

    :cond_61
    :goto_61
    const v2, 0x7f0a011e

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const v2, 0x7f0a011b

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0456

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_97
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_61
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    const-string/jumbo v1, "kapCheckBox"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public onResume()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnforced()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isDeviceTampered()Z

    move-result v1

    if-nez v1, :cond_15

    if-eqz v2, :cond_18

    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_2b

    :cond_18
    :goto_18
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    const-string/jumbo v3, "KnoxActiveProtectionEulaActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_4b
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "kapCheckBox"

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
