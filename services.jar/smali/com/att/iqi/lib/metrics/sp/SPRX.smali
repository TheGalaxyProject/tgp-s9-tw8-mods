.class public Lcom/att/iqi/lib/metrics/sp/SPRX;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/att/iqi/lib/metrics/sp/SPRX;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field public m_dwCSeq:I

.field public m_dwTransId:I

.field public m_strMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string/jumbo v1, "SPRX"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/sp/SPRX;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/sp/SPRX$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/sp/SPRX$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/sp/SPRX;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/sp/SPRX;->reset()V

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

    iput v1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    goto :goto_a
.end method


# virtual methods
.method public getCSeq()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTransId()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    return-void
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_15
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-gtz v0, :cond_1f

    :goto_1a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    return v1

    :cond_1f
    iget-object v1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1a
.end method

.method public setCSeq(I)Lcom/att/iqi/lib/metrics/sp/SPRX;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/sp/SPRX;
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setTransId(I)Lcom/att/iqi/lib/metrics/sp/SPRX;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
