.class public Lcom/att/iqi/lib/metrics/lc/LC18;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/att/iqi/lib/metrics/lc/LC18;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field public lAltitude:I

.field public lHeading:I

.field public lLatitude:I

.field public lLongitude:I

.field public lUncertaintyAint:I

.field public lUncertaintyAltitude:I

.field public lUncertaintyAngle:I

.field public lUncertaintyPerpendicular:I

.field public lVelocityHorizontal:I

.field public lVelocityVertical:I

.field public ucFieldsValid:B

.field public ucGpsRequestType:B

.field public ucGpsResult:B

.field public ucGpsSource:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string/jumbo v1, "LC18"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/lc/LC18;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/lc/LC18$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/lc/LC18$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/lc/LC18;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/lc/LC18;->clear()V

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsRequestType:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsSource:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsResult:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucFieldsValid:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lLatitude:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lLongitude:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lAltitude:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lVelocityHorizontal:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lVelocityVertical:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lHeading:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAngle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAint:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyPerpendicular:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAltitude:I

    goto :goto_a
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsRequestType:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsSource:B

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsResult:B

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucFieldsValid:B

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lLatitude:I

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lLongitude:I

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lAltitude:I

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lVelocityHorizontal:I

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lVelocityVertical:I

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lHeading:I

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAngle:I

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAint:I

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyPerpendicular:I

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAltitude:I

    return-void
.end method

.method public getAltitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lAltitude:I

    return v0
.end method

.method public getFieldsValid()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucFieldsValid:B

    return v0
.end method

.method public getHeading()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lHeading:I

    return v0
.end method

.method public getLatitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lLatitude:I

    return v0
.end method

.method public getLongitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lLongitude:I

    return v0
.end method

.method public getRequestType()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsRequestType:B

    return v0
.end method

.method public getResult()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsResult:B

    return v0
.end method

.method public getSource()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsSource:B

    return v0
.end method

.method public getUncertaintyAint()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAint:I

    return v0
.end method

.method public getUncertaintyAltitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAltitude:I

    return v0
.end method

.method public getUncertaintyAngle()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAngle:I

    return v0
.end method

.method public getUncertaintyPerpendicular()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyPerpendicular:I

    return v0
.end method

.method public getVelocityHorizontal()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lVelocityHorizontal:I

    return v0
.end method

.method public getVelocityVertical()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lVelocityVertical:I

    return v0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsRequestType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsSource:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsResult:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucFieldsValid:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lLatitude:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lLongitude:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lAltitude:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lVelocityHorizontal:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lVelocityVertical:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lHeading:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAngle:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAint:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyPerpendicular:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAltitude:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setAltitude(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lAltitude:I

    return-object p0
.end method

.method public setFieldsValid(B)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucFieldsValid:B

    return-object p0
.end method

.method public setHeading(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lHeading:I

    return-object p0
.end method

.method public setLatitude(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lLatitude:I

    return-object p0
.end method

.method public setLongitude(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lLongitude:I

    return-object p0
.end method

.method public setRequestType(B)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsRequestType:B

    return-object p0
.end method

.method public setResult(B)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsResult:B

    return-object p0
.end method

.method public setSource(B)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsSource:B

    return-object p0
.end method

.method public setUncertaintyAint(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAint:I

    return-object p0
.end method

.method public setUncertaintyAltitude(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAltitude:I

    return-object p0
.end method

.method public setUncertaintyAngle(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAngle:I

    return-object p0
.end method

.method public setUncertaintyPerpendicular(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyPerpendicular:I

    return-object p0
.end method

.method public setVelocityHorizontal(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lVelocityHorizontal:I

    return-object p0
.end method

.method public setVelocityVertical(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lVelocityVertical:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsRequestType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsSource:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucGpsResult:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->ucFieldsValid:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lLatitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lLongitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lAltitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lVelocityHorizontal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lVelocityVertical:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lHeading:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAngle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyPerpendicular:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->lUncertaintyAltitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
