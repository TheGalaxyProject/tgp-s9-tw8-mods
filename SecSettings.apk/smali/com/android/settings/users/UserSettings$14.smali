.class Lcom/android/settings/users/UserSettings$14;
.super Ljava/lang/Thread;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->addUserNow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field final synthetic val$userType:I


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$14;->this$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$14;->val$userType:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget v1, p0, Lcom/android/settings/users/UserSettings$14;->val$userType:I

    if-ne v1, v4, :cond_14

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$14;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->-wrap1(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    :goto_c
    if-nez v0, :cond_1b

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$14;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1, v2}, Lcom/android/settings/users/UserSettings;->-set0(Lcom/android/settings/users/UserSettings;Z)Z

    return-void

    :cond_14
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$14;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->-wrap0(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_c

    :cond_1b
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$14;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->-get4(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_22
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$14;->this$0:Lcom/android/settings/users/UserSettings;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/settings/users/UserSettings;->-set0(Lcom/android/settings/users/UserSettings;Z)Z

    iget v1, p0, Lcom/android/settings/users/UserSettings$14;->val$userType:I

    if-ne v1, v4, :cond_50

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$14;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->-get1(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$14;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->-get1(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$14;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->-get1(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    iget v5, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4e
    .catchall {:try_start_22 .. :try_end_4e} :catchall_69

    :goto_4e
    monitor-exit v2

    return-void

    :cond_50
    :try_start_50
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$14;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->-get1(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$14;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->-get1(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    iget v5, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_69

    goto :goto_4e

    :catchall_69
    move-exception v1

    monitor-exit v2

    throw v1
.end method
