.class public Lcom/att/iqi/lib/metrics/rp/RP02;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/att/iqi/lib/metrics/rp/RP02;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final IQ_RTP_BADSSRC:B = 0x4t

.field public static final IQ_RTP_DROP:B = 0x2t

.field public static final IQ_RTP_LATE:B = 0x1t

.field public static final IQ_RTP_OK:B = 0x0t

.field public static final IQ_RTP_RESETSEQ:B = 0x3t


# instance fields
.field public m_dwSourceId:I

.field public m_dwTimestamp:I

.field public m_ucFlags:B

.field public m_ucPayloadType:B

.field public m_ucPktStatus:B

.field public m_wByteCount:S

.field public m_wDstPort:S

.field public m_wSequenceNum:S


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string/jumbo v1, "RP02"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP02;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/rp/RP02$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/rp/RP02$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP02;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/rp/RP02;->reset()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wByteCount:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wDstPort:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPktStatus:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucFlags:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPayloadType:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wSequenceNum:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwTimestamp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwSourceId:I

    goto :goto_a
.end method


# virtual methods
.method public getByteCount()S
    .registers 2

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wByteCount:S

    return v0
.end method

.method public getDstPort()S
    .registers 2

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wDstPort:S

    return v0
.end method

.method public getFlags()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucFlags:B

    return v0
.end method

.method public getPayloadType()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPayloadType:B

    return v0
.end method

.method public getPktStatus()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPktStatus:B

    return v0
.end method

.method public getSequenceNum()S
    .registers 2

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wSequenceNum:S

    return v0
.end method

.method public getSourceId()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwSourceId:I

    return v0
.end method

.method public getTimestamp()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwTimestamp:I

    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wByteCount:S

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wDstPort:S

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPktStatus:B

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucFlags:B

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPayloadType:B

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wSequenceNum:S

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwTimestamp:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwSourceId:I

    return-void
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wByteCount:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wDstPort:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPktStatus:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucFlags:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPayloadType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wSequenceNum:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwTimestamp:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwSourceId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setByteCount(S)Lcom/att/iqi/lib/metrics/rp/RP02;
    .registers 3

    int-to-short v0, p1

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wByteCount:S

    return-object p0
.end method

.method public setDstPort(S)Lcom/att/iqi/lib/metrics/rp/RP02;
    .registers 3

    int-to-short v0, p1

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wDstPort:S

    return-object p0
.end method

.method public setFlags(B)Lcom/att/iqi/lib/metrics/rp/RP02;
    .registers 3

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucFlags:B

    return-object p0
.end method

.method public setPayloadType(B)Lcom/att/iqi/lib/metrics/rp/RP02;
    .registers 3

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPayloadType:B

    return-object p0
.end method

.method public setPktStatus(B)Lcom/att/iqi/lib/metrics/rp/RP02;
    .registers 3

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPktStatus:B

    return-object p0
.end method

.method public setSequenceNum(S)Lcom/att/iqi/lib/metrics/rp/RP02;
    .registers 3

    int-to-short v0, p1

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wSequenceNum:S

    return-object p0
.end method

.method public setSourceId(I)Lcom/att/iqi/lib/metrics/rp/RP02;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwSourceId:I

    return-object p0
.end method

.method public setTimestamp(I)Lcom/att/iqi/lib/metrics/rp/RP02;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwTimestamp:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wByteCount:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wDstPort:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPktStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucFlags:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_ucPayloadType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_wSequenceNum:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwTimestamp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->m_dwSourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
