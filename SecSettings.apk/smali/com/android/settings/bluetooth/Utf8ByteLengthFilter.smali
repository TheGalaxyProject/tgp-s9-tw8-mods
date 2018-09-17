.class Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "Utf8ByteLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final mMaxBytes:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->mMaxBytes:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 14

    const/4 v5, 0x0

    move v3, p2

    :goto_2
    if-ge v3, p3, :cond_19

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x80

    if-ge v0, v6, :cond_11

    const/4 v6, 0x1

    :goto_d
    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_11
    const/16 v6, 0x800

    if-ge v0, v6, :cond_17

    const/4 v6, 0x2

    goto :goto_d

    :cond_17
    const/4 v6, 0x3

    goto :goto_d

    :cond_19
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_3a

    if-lt v3, p5, :cond_25

    if-lt v3, p6, :cond_2f

    :cond_25
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    const/16 v6, 0x80

    if-ge v0, v6, :cond_32

    const/4 v6, 0x1

    :goto_2e
    add-int/2addr v1, v6

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_32
    const/16 v6, 0x800

    if-ge v0, v6, :cond_38

    const/4 v6, 0x2

    goto :goto_2e

    :cond_38
    const/4 v6, 0x3

    goto :goto_2e

    :cond_3a
    iget v6, p0, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->mMaxBytes:I

    sub-int v4, v6, v1

    if-gtz v4, :cond_44

    const-string/jumbo v6, ""

    return-object v6

    :cond_44
    if-lt v4, v5, :cond_48

    const/4 v6, 0x0

    return-object v6

    :cond_48
    move v3, p2

    :goto_49
    if-ge v3, p3, :cond_67

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x80

    if-ge v0, v6, :cond_5c

    const/4 v6, 0x1

    :goto_54
    sub-int/2addr v4, v6

    if-gez v4, :cond_64

    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    return-object v6

    :cond_5c
    const/16 v6, 0x800

    if-ge v0, v6, :cond_62

    const/4 v6, 0x2

    goto :goto_54

    :cond_62
    const/4 v6, 0x3

    goto :goto_54

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :cond_67
    const/4 v6, 0x0

    return-object v6
.end method
