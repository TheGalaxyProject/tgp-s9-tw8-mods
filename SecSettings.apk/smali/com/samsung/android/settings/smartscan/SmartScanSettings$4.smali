.class Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;
.super Ljava/lang/Object;
.source "SmartScanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSettings;->deleteSmartScanDialog()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-set0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
