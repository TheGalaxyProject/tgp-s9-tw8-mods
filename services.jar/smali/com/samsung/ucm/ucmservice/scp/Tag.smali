.class public Lcom/samsung/ucm/ucmservice/scp/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# static fields
.field public static final CLASS_APPLICATION:B = 0x40t

.field public static final CLASS_CONTEXT_SPECIFIC:B = -0x80t

.field public static final CLASS_PRIVATE:B = -0x40t

.field public static final CLASS_UNIVERSAL:B = 0x0t

.field public static final MASK_CLASS:B = -0x40t

.field public static final MASK_CONSTRUCTED_TAG:B = 0x20t

.field public static final MASK_TAG_VALUE:B = 0x1ft

.field public static final TAG_APPLICATION_AID:I = 0x84

.field public static final TAG_FILE_CONTROL_INFO:I = 0x6f

.field public static final TAG_KEY_INFORMATION_DATA_OBJECT:I = 0xc0

.field public static final TAG_KEY_INFORMATION_TEMPLATE:I = 0xe0

.field public static final TAG_MAX_CMD_LEN:I = 0x9f65

.field public static final TAG_OID:I = 0x6

.field public static final TAG_PROPRIETARY_DATA:I = 0xa5

.field public static final TAG_SCP_OPTIONS:I = 0x64

.field public static final TAG_SECURITY_DOMAIN_MGMT:I = 0x73


# instance fields
.field private mClass:B

.field private mDescription:Ljava/lang/String;

.field private mIsContructed:Z

.field private mLen:I

.field private mValue:I


# direct methods
.method public constructor <init>(B)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, -0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mClass:B

    and-int/lit8 v0, p1, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1f

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mIsContructed:Z

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mLen:I

    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mValue:I

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mDescription:Ljava/lang/String;

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public constructor <init>(S)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit8 v0, v0, -0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mClass:B

    shr-int/lit8 v0, p1, 0x8

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_25

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mIsContructed:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mLen:I

    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mValue:I

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mDescription:Ljava/lang/String;

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public constructor <init>([BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, -0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mClass:B

    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_4f

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mIsContructed:Z

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mLen:I

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mValue:I

    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_41

    :cond_26
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mLen:I

    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mValue:I

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mValue:I

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_26

    :cond_41
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mLen:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_51

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v1, "Invalid tag"

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    const/4 v0, 0x0

    goto :goto_14

    :cond_51
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Lcom/samsung/ucm/ucmservice/scp/Tag;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getValue()I

    move-result v0

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mValue:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, ""

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mValue:I

    sparse-switch v1, :sswitch_data_de

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    :sswitch_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "TAG_FILE_CONTROL_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :sswitch_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "TAG_APPLICATION_AID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :sswitch_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "TAG_PROPRIETARY_DATA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :sswitch_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "TAG_SECURITY_DOMAIN_MGMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :sswitch_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "TAG_MAX_CMD_LEN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :sswitch_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "TAG_OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :sswitch_9b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "TAG_SCP_OPTIONS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :sswitch_b1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "TAG_KEY_INFORMATION_TEMPLATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :sswitch_c7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "TAG_KEY_INFORMATION_DATA_OBJECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    nop

    :sswitch_data_de
    .sparse-switch
        0x6 -> :sswitch_86
        0x64 -> :sswitch_9b
        0x6f -> :sswitch_1d
        0x73 -> :sswitch_5c
        0x84 -> :sswitch_32
        0xa5 -> :sswitch_47
        0xc0 -> :sswitch_c7
        0xe0 -> :sswitch_b1
        0x9f65 -> :sswitch_71
    .end sparse-switch
.end method

.method public getLen()I
    .registers 2

    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mLen:I

    return v0
.end method

.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mValue:I

    return v0
.end method

.method public isConstructed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mIsContructed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mValue:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, 0x1000000

    add-int/2addr v1, v2

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mLen:I

    mul-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-byte v1, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mClass:B

    sparse-switch v1, :sswitch_data_ee

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "INVALID CLASS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mIsContructed:Z

    if-eqz v1, :cond_ea

    const-string/jumbo v1, "CONSTRUCTED"

    :goto_77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "UNIVERSAL CLASS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :sswitch_a9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "APPLICATION CLASS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :sswitch_be
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PRIVATE CLASS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_46

    :sswitch_d4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "CONTEXT SPECIFIC CLASS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_46

    :cond_ea
    const-string/jumbo v1, "PRIMITIVE"

    goto :goto_77

    :sswitch_data_ee
    .sparse-switch
        -0x80 -> :sswitch_d4
        -0x40 -> :sswitch_be
        0x0 -> :sswitch_94
        0x40 -> :sswitch_a9
    .end sparse-switch
.end method

.method public write([BI)I
    .registers 7

    const/4 v0, 0x1

    :goto_1
    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mLen:I

    if-gt v0, v2, :cond_18

    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mValue:I

    iget v3, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mLen:I

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x8

    shr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_1

    :cond_18
    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/Tag;->mLen:I

    return v2
.end method
