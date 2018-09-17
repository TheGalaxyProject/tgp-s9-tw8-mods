.class public Landroid/net/netlink/StructNlMsgErr;
.super Ljava/lang/Object;
.source "StructNlMsgErr.java"


# static fields
.field public static final STRUCT_SIZE:I = 0x14


# instance fields
.field public error:I

.field public msg:Landroid/net/netlink/StructNlMsgHdr;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgErr;
    .registers 3

    invoke-static {p0}, Landroid/net/netlink/StructNlMsgErr;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    new-instance v0, Landroid/net/netlink/StructNlMsgErr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlMsgErr;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/net/netlink/StructNlMsgErr;->error:I

    invoke-static {p0}, Landroid/net/netlink/StructNlMsgHdr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v1

    iput-object v1, v0, Landroid/net/netlink/StructNlMsgErr;->msg:Landroid/net/netlink/StructNlMsgHdr;

    return-object v0
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .registers 3

    iget v0, p0, Landroid/net/netlink/StructNlMsgErr;->error:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/net/netlink/StructNlMsgErr;->msg:Landroid/net/netlink/StructNlMsgHdr;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/net/netlink/StructNlMsgErr;->msg:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    :cond_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StructNlMsgErr{ error{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/netlink/StructNlMsgErr;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "msg{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/net/netlink/StructNlMsgErr;->msg:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v0, :cond_3e

    const-string/jumbo v0, ""

    :goto_27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3e
    iget-object v0, p0, Landroid/net/netlink/StructNlMsgErr;->msg:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v0}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method
