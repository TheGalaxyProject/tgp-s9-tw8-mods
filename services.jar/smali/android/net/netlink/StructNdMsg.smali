.class public Landroid/net/netlink/StructNdMsg;
.super Ljava/lang/Object;
.source "StructNdMsg.java"


# static fields
.field public static NTF_MASTER:B = 0x0t

.field public static NTF_PROXY:B = 0x0t

.field public static NTF_ROUTER:B = 0x0t

.field public static NTF_SELF:B = 0x0t

.field public static NTF_USE:B = 0x0t

.field public static final NUD_DELAY:S = 0x8s

.field public static final NUD_FAILED:S = 0x20s

.field public static final NUD_INCOMPLETE:S = 0x1s

.field public static final NUD_NOARP:S = 0x40s

.field public static final NUD_NONE:S = 0x0s

.field public static final NUD_PERMANENT:S = 0x80s

.field public static final NUD_PROBE:S = 0x10s

.field public static final NUD_REACHABLE:S = 0x2s

.field public static final NUD_STALE:S = 0x4s

.field public static final STRUCT_SIZE:I = 0xc


# instance fields
.field public ndm_family:B

.field public ndm_flags:B

.field public ndm_ifindex:I

.field public ndm_state:S

.field public ndm_type:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_USE:B

    const/4 v0, 0x2

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_SELF:B

    const/4 v0, 0x4

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_MASTER:B

    const/16 v0, 0x8

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_PROXY:B

    const/16 v0, -0x80

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_ROUTER:B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/system/OsConstants;->AF_UNSPEC:I

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    return-void
.end method

.method private static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static isNudStateConnected(S)Z
    .registers 3

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0xc2

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdMsg;
    .registers 5

    invoke-static {p0}, Landroid/net/netlink/StructNdMsg;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    return-object v3

    :cond_8
    new-instance v2, Landroid/net/netlink/StructNdMsg;

    invoke-direct {v2}, Landroid/net/netlink/StructNdMsg;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput-short v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    return-object v2
.end method

.method public static stringForNudFlags(B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_USE:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    const-string/jumbo v1, "NTF_USE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_SELF:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_21

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    const-string/jumbo v1, "NTF_SELF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_MASTER:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_3e

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_38

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    const-string/jumbo v1, "NTF_MASTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_PROXY:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_55

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4f

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    const-string/jumbo v1, "NTF_PROXY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_ROUTER:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_6c

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_66

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_66
    const-string/jumbo v1, "NTF_ROUTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stringForNudState(S)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown NUD state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "NUD_NONE"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "NUD_INCOMPLETE"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "NUD_REACHABLE"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "NUD_STALE"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "NUD_DELAY"

    return-object v0

    :sswitch_30
    const-string/jumbo v0, "NUD_PROBE"

    return-object v0

    :sswitch_34
    const-string/jumbo v0, "NUD_FAILED"

    return-object v0

    :sswitch_38
    const-string/jumbo v0, "NUD_NOARP"

    return-object v0

    :sswitch_3c
    const-string/jumbo v0, "NUD_PERMANENT"

    return-object v0

    :sswitch_data_40
    .sparse-switch
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_20
        0x2 -> :sswitch_24
        0x4 -> :sswitch_28
        0x8 -> :sswitch_2c
        0x10 -> :sswitch_30
        0x20 -> :sswitch_34
        0x40 -> :sswitch_38
        0x80 -> :sswitch_3c
    .end sparse-switch
.end method


# virtual methods
.method public nudConnected()Z
    .registers 2

    iget-short v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-static {v0}, Landroid/net/netlink/StructNdMsg;->isNudStateConnected(S)Z

    move-result v0

    return v0
.end method

.method public nudValid()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/net/netlink/StructNdMsg;->nudConnected()Z

    move-result v2

    if-nez v2, :cond_e

    iget-short v2, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    and-int/lit8 v2, v2, 0x1c

    if-eqz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/4 v1, 0x0

    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-static {v3}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-static {v3}, Landroid/net/netlink/StructNdMsg;->stringForNudFlags(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "StructNdMsg{ family{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->stringForAddressFamily(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ifindex{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "state{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "flags{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "type{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "} "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
