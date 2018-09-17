.class public Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnificationConfirmationDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newIntance(Z)Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;
    .registers 4

    new-instance v1, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;

    invoke-direct {v1}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "compliant"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x214

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SecuritySettings;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "compliant"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12102d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz v0, :cond_45

    const v2, 0x7f12102b

    :goto_26
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz v0, :cond_49

    const v2, 0x7f12102c

    :goto_2f
    new-instance v4, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog$1;-><init>(Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;ZLcom/android/settings/SecuritySettings;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f12055d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :cond_45
    const v2, 0x7f12102e

    goto :goto_26

    :cond_49
    const v2, 0x7f12102f

    goto :goto_2f
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->-wrap5(Lcom/android/settings/SecuritySettings;)V

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-super {p0, p1, p2}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
