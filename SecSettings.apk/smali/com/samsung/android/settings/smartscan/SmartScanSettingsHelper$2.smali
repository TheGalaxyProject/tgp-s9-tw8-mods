.class final Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$2;
.super Ljava/lang/Object;
.source "SmartScanSettingsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->showSmartScanSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isFinish:Z

.field final synthetic val$pActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .registers 3

    iput-boolean p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$2;->val$isFinish:Z

    iput-object p2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$2;->val$pActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$2;->val$isFinish:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$2;->val$pActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_9
    return-void
.end method
