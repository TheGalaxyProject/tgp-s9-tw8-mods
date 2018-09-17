.class public Lcom/att/iqi/lib/metrics/mm/MM04;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/att/iqi/lib/metrics/mm/MM04;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field public m_szCallId:Ljava/lang/String;

.field public m_szDialedString:Ljava/lang/String;

.field public m_szOriginatingUri:Ljava/lang/String;

.field public m_szTerminatingUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string/jumbo v1, "MM04"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM04;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/mm/MM04$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/mm/MM04$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM04;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/mm/MM04;->reset()V

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    goto :goto_a
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getDialedString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminatingUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .registers 2

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    return-void
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/metrics/mm/MM04;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/metrics/mm/MM04;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/metrics/mm/MM04;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/metrics/mm/MM04;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setCallId(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM04;
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    return-object p0
.end method

.method public setDialedString(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM04;
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    return-object p0
.end method

.method public setOriginatingUri(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM04;
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    return-object p0
.end method

.method public setTerminatingUri(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM04;
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
