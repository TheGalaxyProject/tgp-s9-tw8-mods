.class public Landroid/net/netlink/NetlinkConstants;
.super Ljava/lang/Object;
.source "NetlinkConstants.java"


# static fields
.field public static final NLA_ALIGNTO:I = 0x4

.field public static final NLMSG_DONE:S = 0x3s

.field public static final NLMSG_ERROR:S = 0x2s

.field public static final NLMSG_MAX_RESERVED:S = 0xfs

.field public static final NLMSG_NOOP:S = 0x1s

.field public static final NLMSG_OVERRUN:S = 0x4s

.field public static final RTM_DELADDR:S = 0x15s

.field public static final RTM_DELLINK:S = 0x11s

.field public static final RTM_DELNEIGH:S = 0x1ds

.field public static final RTM_DELROUTE:S = 0x19s

.field public static final RTM_DELRULE:S = 0x21s

.field public static final RTM_GETADDR:S = 0x16s

.field public static final RTM_GETLINK:S = 0x12s

.field public static final RTM_GETNEIGH:S = 0x1es

.field public static final RTM_GETROUTE:S = 0x1as

.field public static final RTM_GETRULE:S = 0x22s

.field public static final RTM_NEWADDR:S = 0x14s

.field public static final RTM_NEWLINK:S = 0x10s

.field public static final RTM_NEWNDUSEROPT:S = 0x44s

.field public static final RTM_NEWNEIGH:S = 0x1cs

.field public static final RTM_NEWROUTE:S = 0x18s

.field public static final RTM_NEWRULE:S = 0x20s

.field public static final RTM_SETLINK:S = 0x13s


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alignedLengthOf(I)I
    .registers 2

    const/4 v0, 0x0

    if-gtz p0, :cond_4

    return v0

    :cond_4
    add-int/lit8 v0, p0, 0x4

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static final alignedLengthOf(S)I
    .registers 3

    const v1, 0xffff

    and-int v0, p0, v1

    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    return v1
.end method

.method public static hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_6

    const-string/jumbo v0, "(null)"

    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexify([B)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_6

    const-string/jumbo v0, "(null)"

    return-object v0

    :cond_6
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringForAddressFamily(I)Ljava/lang/String;
    .registers 2

    sget v0, Landroid/system/OsConstants;->AF_INET:I

    if-ne p0, v0, :cond_8

    const-string/jumbo v0, "AF_INET"

    return-object v0

    :cond_8
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p0, v0, :cond_10

    const-string/jumbo v0, "AF_INET6"

    return-object v0

    :cond_10
    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    if-ne p0, v0, :cond_18

    const-string/jumbo v0, "AF_NETLINK"

    return-object v0

    :cond_18
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringForNlMsgType(S)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_70

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown RTM type: "

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
    const-string/jumbo v0, "NLMSG_NOOP"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "NLMSG_ERROR"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "NLMSG_DONE"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "NLMSG_OVERRUN"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "RTM_NEWLINK"

    return-object v0

    :sswitch_30
    const-string/jumbo v0, "RTM_DELLINK"

    return-object v0

    :sswitch_34
    const-string/jumbo v0, "RTM_GETLINK"

    return-object v0

    :sswitch_38
    const-string/jumbo v0, "RTM_SETLINK"

    return-object v0

    :sswitch_3c
    const-string/jumbo v0, "RTM_NEWADDR"

    return-object v0

    :sswitch_40
    const-string/jumbo v0, "RTM_DELADDR"

    return-object v0

    :sswitch_44
    const-string/jumbo v0, "RTM_GETADDR"

    return-object v0

    :sswitch_48
    const-string/jumbo v0, "RTM_NEWROUTE"

    return-object v0

    :sswitch_4c
    const-string/jumbo v0, "RTM_DELROUTE"

    return-object v0

    :sswitch_50
    const-string/jumbo v0, "RTM_GETROUTE"

    return-object v0

    :sswitch_54
    const-string/jumbo v0, "RTM_NEWNEIGH"

    return-object v0

    :sswitch_58
    const-string/jumbo v0, "RTM_DELNEIGH"

    return-object v0

    :sswitch_5c
    const-string/jumbo v0, "RTM_GETNEIGH"

    return-object v0

    :sswitch_60
    const-string/jumbo v0, "RTM_NEWRULE"

    return-object v0

    :sswitch_64
    const-string/jumbo v0, "RTM_DELRULE"

    return-object v0

    :sswitch_68
    const-string/jumbo v0, "RTM_GETRULE"

    return-object v0

    :sswitch_6c
    const-string/jumbo v0, "RTM_NEWNDUSEROPT"

    return-object v0

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_20
        0x3 -> :sswitch_24
        0x4 -> :sswitch_28
        0x10 -> :sswitch_2c
        0x11 -> :sswitch_30
        0x12 -> :sswitch_34
        0x13 -> :sswitch_38
        0x14 -> :sswitch_3c
        0x15 -> :sswitch_40
        0x16 -> :sswitch_44
        0x18 -> :sswitch_48
        0x19 -> :sswitch_4c
        0x1a -> :sswitch_50
        0x1c -> :sswitch_54
        0x1d -> :sswitch_58
        0x1e -> :sswitch_5c
        0x20 -> :sswitch_60
        0x21 -> :sswitch_64
        0x22 -> :sswitch_68
        0x44 -> :sswitch_6c
    .end sparse-switch
.end method
