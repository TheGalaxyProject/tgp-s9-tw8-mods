.class Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ZenModeDNDScheduleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "reason"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "zen_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5e

    const/4 v1, 0x1

    :goto_19
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)V

    :cond_24
    if-ne v2, v6, :cond_71

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_71

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v3

    if-eqz v3, :cond_60

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f121702

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f1218ba

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    const/4 v1, 0x0

    goto :goto_19

    :cond_60
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1218bb

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_5d

    :cond_71
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5d

    if-eqz v1, :cond_5d

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v3

    if-eqz v3, :cond_8d

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1208f5

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_5d

    :cond_8d
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1208f6

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_5d
.end method
