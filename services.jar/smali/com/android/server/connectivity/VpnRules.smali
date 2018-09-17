.class public Lcom/android/server/connectivity/VpnRules;
.super Ljava/lang/Object;
.source "VpnRules.java"


# static fields
.field private static final APPEND:Ljava/lang/String; = " -A"

.field private static final DEL_CHAIN:Ljava/lang/String; = " -X"

.field private static final DEL_RULE:Ljava/lang/String; = " -D"

.field private static final FLUSH:Ljava/lang/String; = " -F"

.field private static final IPTABLES_V4:Ljava/lang/String; = "iptables"

.field private static final IPTABLES_V6:Ljava/lang/String; = "ip6tables"

.field private static final JUMP:Ljava/lang/String; = " -j"

.field private static final MANGLE:Ljava/lang/String; = " -t mangle"

.field private static final NEW_CHAIN:Ljava/lang/String; = " -N"

.field private static final POSTROUTING:Ljava/lang/String; = " POSTROUTING"

.field private static final TAG:Ljava/lang/String; = "VpnRules"

.field private static final VPN_POSTROUTING:Ljava/lang/String; = " vpn_POSTROUTING"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized executeVpnRules(Ljava/lang/String;)V
    .registers 12

    monitor-enter p0

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_3
    const-string/jumbo v7, "VpnRules"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "executeVpnRules command : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "sh"

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "-c"

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_d2

    :try_start_31
    new-instance v7, Ljava/lang/ProcessBuilder;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v6

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_54} :catch_fe
    .catchall {:try_start_31 .. :try_end_54} :catchall_d4

    :goto_54
    :try_start_54
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9c

    const-string/jumbo v7, "VpnRules"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "execute Error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_74} :catch_75
    .catchall {:try_start_54 .. :try_end_74} :catchall_fb

    goto :goto_54

    :catch_75
    move-exception v2

    move-object v0, v1

    :goto_77
    :try_start_77
    const-string/jumbo v7, "VpnRules"

    const-string/jumbo v8, "executeVpnRules - Exception for command execution"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_d4

    if-eqz v6, :cond_9a

    :try_start_82
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_9a} :catch_c7
    .catchall {:try_start_82 .. :try_end_9a} :catchall_d2

    :cond_9a
    :goto_9a
    monitor-exit p0

    return-void

    :cond_9c
    if-eqz v6, :cond_b6

    :try_start_9e
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b6} :catch_b8
    .catchall {:try_start_9e .. :try_end_b6} :catchall_c3

    :cond_b6
    :goto_b6
    move-object v0, v1

    goto :goto_9a

    :catch_b8
    move-exception v4

    :try_start_b9
    const-string/jumbo v7, "VpnRules"

    const-string/jumbo v8, "executeVpnRules - Exception for closing process"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_c3

    goto :goto_b6

    :catchall_c3
    move-exception v7

    move-object v0, v1

    :goto_c5
    monitor-exit p0

    throw v7

    :catch_c7
    move-exception v4

    :try_start_c8
    const-string/jumbo v7, "VpnRules"

    const-string/jumbo v8, "executeVpnRules - Exception for closing process"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_c8 .. :try_end_d1} :catchall_d2

    goto :goto_9a

    :catchall_d2
    move-exception v7

    goto :goto_c5

    :catchall_d4
    move-exception v7

    :goto_d5
    if-eqz v6, :cond_ef

    :try_start_d7
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_ef} :catch_f0
    .catchall {:try_start_d7 .. :try_end_ef} :catchall_d2

    :cond_ef
    :goto_ef
    :try_start_ef
    throw v7

    :catch_f0
    move-exception v4

    const-string/jumbo v8, "VpnRules"

    const-string/jumbo v9, "executeVpnRules - Exception for closing process"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catchall {:try_start_ef .. :try_end_fa} :catchall_d2

    goto :goto_ef

    :catchall_fb
    move-exception v7

    move-object v0, v1

    goto :goto_d5

    :catch_fe
    move-exception v2

    goto/16 :goto_77
.end method


# virtual methods
.method public addTcpmssClampRule()V
    .registers 4

    const-string/jumbo v1, "VpnRules"

    const-string/jumbo v2, "addTcpmssClampRule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "iptables -t mangle -A vpn_POSTROUTING -p tcp --tcp-flag SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/VpnRules;->executeVpnRules(Ljava/lang/String;)V

    return-void
.end method

.method public createVpnPostroutingChain()V
    .registers 4

    const-string/jumbo v1, "VpnRules"

    const-string/jumbo v2, "createVpnPostroutingChain"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "iptables -t mangle -N vpn_POSTROUTING"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/VpnRules;->executeVpnRules(Ljava/lang/String;)V

    const-string/jumbo v0, "iptables -t mangle -D POSTROUTING -j vpn_POSTROUTING"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/VpnRules;->executeVpnRules(Ljava/lang/String;)V

    const-string/jumbo v0, "iptables -t mangle -A POSTROUTING -j vpn_POSTROUTING"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/VpnRules;->executeVpnRules(Ljava/lang/String;)V

    return-void
.end method

.method public deleteTcpmssClampRule()V
    .registers 4

    const-string/jumbo v1, "VpnRules"

    const-string/jumbo v2, "deleteTcpmssClampRule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "iptables -t mangle -D vpn_POSTROUTING -p tcp --tcp-flag SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/VpnRules;->executeVpnRules(Ljava/lang/String;)V

    return-void
.end method

.method public deleteVpnPostroutingChain()V
    .registers 4

    const-string/jumbo v1, "VpnRules"

    const-string/jumbo v2, "deleteVpnPostroutingChain"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "iptables -t mangle -D POSTROUTING -j vpn_POSTROUTING"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/VpnRules;->executeVpnRules(Ljava/lang/String;)V

    const-string/jumbo v0, "iptables -t mangle -F vpn_POSTROUTING"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/VpnRules;->executeVpnRules(Ljava/lang/String;)V

    const-string/jumbo v0, "iptables -t mangle -X vpn_POSTROUTING"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/VpnRules;->executeVpnRules(Ljava/lang/String;)V

    return-void
.end method
