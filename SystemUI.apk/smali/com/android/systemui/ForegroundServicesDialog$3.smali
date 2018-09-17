.class Lcom/android/systemui/ForegroundServicesDialog$3;
.super Ljava/lang/Object;
.source "ForegroundServicesDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ForegroundServicesDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ForegroundServicesDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/ForegroundServicesDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/ForegroundServicesDialog$3;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const-string/jumbo v1, "299"

    const-string/jumbo v2, "1135"

    invoke-static {v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/ForegroundServicesDialog$3;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-static {v1}, Lcom/android/systemui/ForegroundServicesDialog;->-get3(Lcom/android/systemui/ForegroundServicesDialog;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/systemui/ForegroundServicesDialog$3;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-static {v1}, Lcom/android/systemui/ForegroundServicesDialog;->-get3(Lcom/android/systemui/ForegroundServicesDialog;)Landroid/app/NotificationChannel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object v1, p0, Lcom/android/systemui/ForegroundServicesDialog$3;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-static {v1}, Lcom/android/systemui/ForegroundServicesDialog;->-get3(Lcom/android/systemui/ForegroundServicesDialog;)Landroid/app/NotificationChannel;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    :try_start_25
    iget-object v1, p0, Lcom/android/systemui/ForegroundServicesDialog$3;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-static {v1}, Lcom/android/systemui/ForegroundServicesDialog;->-get4(Lcom/android/systemui/ForegroundServicesDialog;)Landroid/app/INotificationManager;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/ForegroundServicesDialog;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/ForegroundServicesDialog;->-get1()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/ForegroundServicesDialog$3;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-static {v4}, Lcom/android/systemui/ForegroundServicesDialog;->-get3(Lcom/android/systemui/ForegroundServicesDialog;)Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_3c} :catch_3d

    :cond_3c
    :goto_3c
    return-void

    :catch_3d
    move-exception v0

    goto :goto_3c
.end method
