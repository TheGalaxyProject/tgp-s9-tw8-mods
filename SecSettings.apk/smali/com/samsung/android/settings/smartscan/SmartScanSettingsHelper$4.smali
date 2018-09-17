.class final Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$4;
.super Ljava/lang/Object;
.source "SmartScanSettingsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->showSmartScanDisclaimerDialog(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$isFinish:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$4;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$4;->val$isFinish:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$4;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$4;->val$isFinish:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_f
    return-void
.end method
