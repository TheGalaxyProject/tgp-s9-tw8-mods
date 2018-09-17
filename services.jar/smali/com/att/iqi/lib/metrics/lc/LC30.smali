.class public Lcom/att/iqi/lib/metrics/lc/LC30;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/att/iqi/lib/metrics/lc/LC30;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final IQ_LOC_METHOD_ALT:B = 0x3t

.field public static final IQ_LOC_METHOD_CELLULAR:B = 0x1t

.field public static final IQ_LOC_METHOD_UNKNOWN:B = 0x0t

.field public static final IQ_LOC_METHOD_WIFI:B = 0x2t

.field public static final IQ_LOC_RESULTS_IN_USE:B = 0x7t

.field public static final IQ_LOC_RESULTS_SUCCESS:B = 0x1t

.field public static final IQ_LOC_RESULTS_UNAVAILABLE:B = 0x2t

.field public static final IQ_LOC_RESULTS_UNKNOWN:B = 0x0t

.field public static final IQ_LOC_RESULTS_USER_DENIED:B = 0x8t

.field public static final IQ_LOC_RESULTS_USER_UNAUTHORIZED:B = 0x9t


# instance fields
.field public lLatitude:I

.field public lLongitude:I

.field public tTimestamp:J

.field public ucMethod:B

.field public ucResultsValid:B

.field public wAccuracy:S


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string/jumbo v1, "LC30"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/lc/LC30;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/lc/LC30$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/lc/LC30$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/lc/LC30;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/lc/LC30;->clear()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->tTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->lLatitude:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->lLongitude:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->wAccuracy:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucMethod:B

    goto :goto_a
.end method


# virtual methods
.method public clear()V
    .registers 4

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->tTimestamp:J

    iput v2, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->lLatitude:I

    iput v2, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->lLongitude:I

    iput-short v2, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->wAccuracy:S

    iput-byte v2, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    return-void
.end method

.method public getAccuracy()S
    .registers 2

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->wAccuracy:S

    return v0
.end method

.method public getGPSTimeStamp()J
    .registers 3

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->tTimestamp:J

    return-wide v0
.end method

.method public getLatitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->lLatitude:I

    return v0
.end method

.method public getLongitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->lLongitude:I

    return v0
.end method

.method public getMethod()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucMethod:B

    return v0
.end method

.method public getResults()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    return v0
.end method

.method public getUnixTimeStamp()J
    .registers 3

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->tTimestamp:J

    return-wide v0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->tTimestamp:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->lLatitude:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->lLongitude:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->wAccuracy:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucMethod:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setAccuracy(S)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 3

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    int-to-short v0, p1

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->wAccuracy:S

    return-object p0
.end method

.method public setGPSTimeStamp(J)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 4

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    iput-wide p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->tTimestamp:J

    return-object p0
.end method

.method public setLatitude(D)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 6

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->lLatitude:I

    return-object p0
.end method

.method public setLongitude(D)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 6

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->lLongitude:I

    return-object p0
.end method

.method public setMethod(B)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 3

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucMethod:B

    return-object p0
.end method

.method public setResults(B)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 3

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    or-int/2addr v0, p1

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    return-object p0
.end method

.method public setUnixTimeStamp(J)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 6

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    const-wide v0, 0x4990f88250L

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->tTimestamp:J

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->tTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->lLatitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->lLongitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->wAccuracy:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucResultsValid:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->ucMethod:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
