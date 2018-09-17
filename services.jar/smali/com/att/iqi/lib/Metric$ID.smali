.class public final Lcom/att/iqi/lib/Metric$ID;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ID"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/att/iqi/lib/Metric$ID;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "[A-Z0-9_]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/lib/Metric$ID;->c:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/att/iqi/lib/Metric$ID$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/Metric$ID$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/Metric$ID;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/att/iqi/lib/Metric$ID;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_18

    iput-object p1, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/att/iqi/lib/Metric$ID;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/Metric$ID;->a:I

    return-void

    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid Metric ID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;)I
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_2d
    return v3
.end method


# virtual methods
.method public asInt()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/Metric$ID;->a:I

    return v0
.end method

.method public asString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_f

    return v1

    :cond_e
    return v1

    :cond_f
    move-object v0, p1

    check-cast v0, Lcom/att/iqi/lib/Metric$ID;

    iget v2, v0, Lcom/att/iqi/lib/Metric$ID;->a:I

    iget v3, p0, Lcom/att/iqi/lib/Metric$ID;->a:I

    if-eq v2, v3, :cond_19

    :cond_18
    :goto_18
    return v1

    :cond_19
    iget-object v2, v0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v1, 0x1

    goto :goto_18
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xc5

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_9
    add-int/lit16 v1, v2, 0xd15

    return v1

    :cond_c
    iget-object v2, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/Metric$ID;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
