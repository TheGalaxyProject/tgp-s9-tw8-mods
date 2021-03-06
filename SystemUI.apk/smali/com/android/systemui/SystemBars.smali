.class public Lcom/android/systemui/SystemBars;
.super Lcom/android/systemui/SystemUI;
.source "SystemBars.java"


# instance fields
.field private mStatusBar:Lcom/android/systemui/SystemUI;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method private andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 4

    const-string/jumbo v0, "SystemBars"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createStatusBarFromConfig()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v3, -0x10

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v3, p0, Lcom/android/systemui/SystemBars;->mContext:Landroid/content/Context;

    const v4, 0x7f1201fe

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_20

    :cond_18
    const-string/jumbo v3, "No status bar component configured"

    invoke-direct {p0, v3, v6}, Lcom/android/systemui/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_20
    const/4 v0, 0x0

    :try_start_21
    iget-object v3, p0, Lcom/android/systemui/SystemBars;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2a} :catch_48

    move-result-object v0

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/SystemUI;

    iput-object v3, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_33} :catch_62

    iget-object v3, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    iget-object v4, p0, Lcom/android/systemui/SystemBars;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    iget-object v4, p0, Lcom/android/systemui/SystemBars;->mComponents:Ljava/util/Map;

    iput-object v4, v3, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    invoke-virtual {v3}, Lcom/android/systemui/SystemUI;->start()V

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catch_48
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catch_62
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error creating status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public start()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/SystemBars;->createStatusBarFromConfig()V

    return-void
.end method
