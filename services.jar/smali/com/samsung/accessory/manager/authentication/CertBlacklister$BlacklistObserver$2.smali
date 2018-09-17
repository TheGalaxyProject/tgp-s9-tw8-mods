.class Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->writeBlacklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$1:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$1:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-get3(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v6

    monitor-enter v6

    :try_start_7
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$1:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2c

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$1:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-get1(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-get0()Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string/jumbo v5, "CertBlacklister"

    const-string/jumbo v7, "Certificate blacklist not changed, return..."

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_ab

    :cond_2a
    monitor-exit v6

    return-void

    :cond_2c
    if-eqz v4, :cond_9b

    :try_start_2e
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$1:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-static {v5, v4}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-set0(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-get0()Z

    move-result v5

    if-eqz v5, :cond_42

    const-string/jumbo v5, "CertBlacklister"

    const-string/jumbo v7, "Certificate blacklist changed, updating..."

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_ab

    :cond_42
    const/4 v1, 0x0

    :try_start_43
    const-string/jumbo v5, "journal"

    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$1:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-static {v8}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-get3(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v8

    invoke-static {v5, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5d} :catch_9d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_ae

    :try_start_5d
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$1:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-get1(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$1:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-static {v7}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-get2(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-get0()Z

    move-result v5

    if-eqz v5, :cond_8a

    const-string/jumbo v5, "CertBlacklister"

    const-string/jumbo v7, "Certificate blacklist updated"

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_8a} :catch_b6
    .catchall {:try_start_5d .. :try_end_8a} :catchall_b3

    :cond_8a
    :try_start_8a
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    :goto_8e
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->-get0()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    move-result-object v5

    if-eqz v5, :cond_9b

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->-get0()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;->onCertBlacklistChanged()V
    :try_end_9b
    .catchall {:try_start_8a .. :try_end_9b} :catchall_ab

    :cond_9b
    monitor-exit v6

    return-void

    :catch_9d
    move-exception v0

    :goto_9e
    :try_start_9e
    const-string/jumbo v5, "CertBlacklister"

    const-string/jumbo v7, "Failed to write list"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catchall {:try_start_9e .. :try_end_a7} :catchall_ae

    :try_start_a7
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    goto :goto_8e

    :catchall_ab
    move-exception v5

    monitor-exit v6

    throw v5

    :catchall_ae
    move-exception v5

    :goto_af
    :try_start_af
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_b3
    .catchall {:try_start_af .. :try_end_b3} :catchall_ab

    :catchall_b3
    move-exception v5

    move-object v1, v2

    goto :goto_af

    :catch_b6
    move-exception v0

    move-object v1, v2

    goto :goto_9e
.end method
