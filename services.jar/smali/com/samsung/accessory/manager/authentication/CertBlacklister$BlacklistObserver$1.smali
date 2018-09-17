.class Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->readFile()V
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

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-static {v2}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-get3(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-get0()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string/jumbo v2, "CertBlacklister"

    const-string/jumbo v4, "Read a blacklist from file.."

    invoke-static {v2, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_54

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    sget-object v4, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-set0(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_21} :catch_57
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_21} :catch_49
    .catchall {:try_start_16 .. :try_end_21} :catchall_54

    :goto_21
    :try_start_21
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-get0()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string/jumbo v2, "CertBlacklister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBlacklist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->-get1(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_54

    :cond_47
    monitor-exit v3

    return-void

    :catch_49
    move-exception v1

    :try_start_4a
    const-string/jumbo v2, "CertBlacklister"

    const-string/jumbo v4, "Failed to read list"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_54

    goto :goto_21

    :catchall_54
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_57
    move-exception v0

    :try_start_58
    const-string/jumbo v2, "CertBlacklister"

    const-string/jumbo v4, "File does not exist"

    invoke-static {v2, v4}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_54

    goto :goto_21
.end method
