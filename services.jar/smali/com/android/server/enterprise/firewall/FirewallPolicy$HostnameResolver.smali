.class Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;
.super Landroid/os/AsyncTask;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostnameResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFinishResolving:Z

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-object v1, p1, v2

    invoke-static {v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->-set0([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    :try_start_8
    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->-set0([Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_f} :catch_23
    .catchall {:try_start_8 .. :try_end_f} :catchall_28

    :goto_f
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->-get1(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_18
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->-get1(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_2c

    monitor-exit v3

    return-object v4

    :catch_23
    move-exception v0

    :try_start_24
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_f

    :catchall_28
    move-exception v2

    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    throw v2

    :catchall_2c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected isFinished()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    return v0
.end method
