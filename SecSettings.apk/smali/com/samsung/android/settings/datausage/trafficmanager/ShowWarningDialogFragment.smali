.class public Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "ShowWarningDialogFragment.java"


# instance fields
.field private mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;)Lcom/android/settings/datausage/DataUsageSummary;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string/jumbo v0, "ShowWarningDialog"

    const-string/jumbo v1, "cancel dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 15

    const/4 v12, 0x0

    const/4 v11, 0x0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "titleResId"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "positiveResId"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "negativeResId"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "bodyResId"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "bodystr"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0d0374

    invoke-virtual {v9, v10, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$1;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;)V

    invoke-virtual {v9, v4, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$2;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;)V

    invoke-virtual {v9, v3, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0a0255

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-lez v0, :cond_8b

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_86

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_86
    :goto_86
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    :cond_8b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_86

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_86
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
