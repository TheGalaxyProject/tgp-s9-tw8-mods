.class final Lcom/android/server/DockObserver$BinderService;
.super Landroid/os/Binder;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$BinderService;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    const/16 v10, 0xa

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {v6}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "DockObserver"

    invoke-static {v6, v7, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v6

    if-nez v6, :cond_13

    return-void

    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_17
    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v6}, Lcom/android/server/DockObserver;->-get2(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c7

    if-eqz p3, :cond_23

    :try_start_20
    array-length v6, p3

    if-nez v6, :cond_127

    :cond_23
    const-string/jumbo v6, "Current Dock Observer Service state:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v6}, Lcom/android/server/DockObserver;->-get7(Lcom/android/server/DockObserver;)Z

    move-result v6

    if-eqz v6, :cond_37

    const-string/jumbo v6, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  reported state: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v8}, Lcom/android/server/DockObserver;->-get5(Lcom/android/server/DockObserver;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  previous state: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v8}, Lcom/android/server/DockObserver;->-get4(Lcom/android/server/DockObserver;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  actual state: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v8}, Lcom/android/server/DockObserver;->-get0(Lcom/android/server/DockObserver;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  smart dock state: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v8}, Lcom/android/server/DockObserver;->-get6(Lcom/android/server/DockObserver;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " last uevent device: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v8}, Lcom/android/server/DockObserver;->-get1(Lcom/android/server/DockObserver;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v6}, Lcom/android/server/DockObserver;->-get3(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v6

    if-eqz v6, :cond_1bd

    const-string/jumbo v6, " == Latest states from Driver =="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_d7
    if-ge v1, v10, :cond_166

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "   Time: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v8}, Lcom/android/server/DockObserver;->-get3(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/DockObserver$logRecent;->uEventTime:[J

    aget-wide v8, v8, v1

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " State: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v8}, Lcom/android/server/DockObserver;->-get3(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/DockObserver$logRecent;->uEventType:[I

    aget v8, v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " UsbpdIds: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v8}, Lcom/android/server/DockObserver;->-get3(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/DockObserver$logRecent;->uEventUsbpdIds:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d7

    :cond_127
    const-string/jumbo v6, "-a"

    const/4 v8, 0x0

    aget-object v8, p3, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    array-length v6, p3

    const/4 v8, 0x3

    if-ne v6, v8, :cond_1ff

    const-string/jumbo v6, "set"

    const/4 v8, 0x0

    aget-object v8, p3, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ff

    const/4 v6, 0x1

    aget-object v4, p3, v6

    const/4 v6, 0x2

    aget-object v5, p3, v6
    :try_end_149
    .catchall {:try_start_20 .. :try_end_149} :catchall_1c4

    :try_start_149
    const-string/jumbo v6, "state"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1cc

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/android/server/DockObserver;->-set1(Lcom/android/server/DockObserver;Z)Z

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v6, v8}, Lcom/android/server/DockObserver;->-wrap4(Lcom/android/server/DockObserver;I)V
    :try_end_161
    .catch Ljava/lang/NumberFormatException; {:try_start_149 .. :try_end_161} :catch_1e5
    .catchall {:try_start_149 .. :try_end_161} :catchall_1c4

    :cond_161
    :goto_161
    :try_start_161
    monitor-exit v7
    :try_end_162
    .catchall {:try_start_161 .. :try_end_162} :catchall_1c7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_166
    :try_start_166
    const-string/jumbo v6, " == Latest states to Apps =="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_16d
    if-ge v1, v10, :cond_161

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  Time: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v8}, Lcom/android/server/DockObserver;->-get3(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/DockObserver$logRecent;->reportTime:[J

    aget-wide v8, v8, v1

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " State: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v8}, Lcom/android/server/DockObserver;->-get3(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/DockObserver$logRecent;->report:[I

    aget v8, v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " UsbpdIds: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v8}, Lcom/android/server/DockObserver;->-get3(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/DockObserver$logRecent;->reportUsbpdIds:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16d

    :cond_1bd
    const-string/jumbo v6, " Cannot log latest events!"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c3
    .catchall {:try_start_166 .. :try_end_1c3} :catchall_1c4

    goto :goto_161

    :catchall_1c4
    move-exception v6

    :try_start_1c5
    monitor-exit v7

    throw v6
    :try_end_1c7
    .catchall {:try_start_1c5 .. :try_end_1c7} :catchall_1c7

    :catchall_1c7
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_1cc
    :try_start_1cc
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown set option: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1e3
    .catch Ljava/lang/NumberFormatException; {:try_start_1cc .. :try_end_1e3} :catch_1e5
    .catchall {:try_start_1cc .. :try_end_1e3} :catchall_1c4

    goto/16 :goto_161

    :catch_1e5
    move-exception v0

    :try_start_1e6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bad value: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_161

    :cond_1ff
    array-length v6, p3

    if-ne v6, v9, :cond_221

    const-string/jumbo v6, "reset"

    const/4 v8, 0x0

    aget-object v8, p3, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_221

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/DockObserver;->-set1(Lcom/android/server/DockObserver;Z)Z

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    iget-object v8, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v8}, Lcom/android/server/DockObserver;->-get0(Lcom/android/server/DockObserver;)I

    move-result v8

    invoke-static {v6, v8}, Lcom/android/server/DockObserver;->-wrap4(Lcom/android/server/DockObserver;I)V

    goto/16 :goto_161

    :cond_221
    const-string/jumbo v6, "Dump current dock state, or:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  set state <value>"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  reset"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_233
    .catchall {:try_start_1e6 .. :try_end_233} :catchall_1c4

    goto/16 :goto_161
.end method
