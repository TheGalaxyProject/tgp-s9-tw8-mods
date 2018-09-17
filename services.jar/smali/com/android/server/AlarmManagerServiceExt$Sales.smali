.class interface abstract Lcom/android/server/AlarmManagerServiceExt$Sales;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Sales"
.end annotation


# static fields
.field public static final ATT:Z

.field public static final CANADA:Z

.field public static final CHINA:Z

.field public static final JAPAN:Z

.field public static final MPCS:Z

.field public static final NORTH_AMERICA:Z

.field public static final SALES_CODE:Ljava/lang/String;

.field public static final SPR:Z

.field public static final TMO:Z

.field public static final USCC:Z

.field public static final VZW:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x1

    const-string/jumbo v0, "ro.csc.sales_code"

    const-string/jumbo v2, "NONE"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    const-string/jumbo v0, "VZW"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->VZW:Z

    const-string/jumbo v0, "ATT"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20e

    const-string/jumbo v0, "AIO"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20e

    const-string/jumbo v0, "CRI"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_3f
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->ATT:Z

    const-string/jumbo v0, "TMB"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->TMO:Z

    const-string/jumbo v0, "TMK"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->MPCS:Z

    const-string/jumbo v0, "SPR"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_211

    const-string/jumbo v0, "BST"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_211

    const-string/jumbo v0, "VMU"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_211

    const-string/jumbo v0, "XAS"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_81
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->SPR:Z

    const-string/jumbo v0, "USC"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_214

    const-string/jumbo v0, "LRA"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_214

    const-string/jumbo v0, "ACG"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_a2
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->USCC:Z

    const-string/jumbo v0, "RWC"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "FMC"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "MTA"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "CHR"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "MTS"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "TLS"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "KDO"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "SPC"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "CLN"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "BMC"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "VMC"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "PCM"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "SOL"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "BWA"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "GLW"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "VTR"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "ESK"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "PMB"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "XAC"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_173
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->CANADA:Z

    const-string/jumbo v0, "CHN"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21a

    const-string/jumbo v0, "CHU"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21a

    const-string/jumbo v0, "CTC"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21a

    const-string/jumbo v0, "CHM"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21a

    const-string/jumbo v0, "CHC"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1aa
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->CHINA:Z

    const-string/jumbo v0, "DCM"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->JAPAN:Z

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->VZW:Z

    if-nez v0, :cond_20b

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->ATT:Z

    if-nez v0, :cond_20b

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->TMO:Z

    if-nez v0, :cond_20b

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->SPR:Z

    if-nez v0, :cond_20b

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->USCC:Z

    if-nez v0, :cond_20b

    const-string/jumbo v0, "XAR"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20b

    const-string/jumbo v0, "MTR"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20b

    const-string/jumbo v0, "SPT"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20b

    const-string/jumbo v0, "CSP"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20b

    const-string/jumbo v0, "TFN"

    sget-object v2, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20b

    const-string/jumbo v0, "BNN"

    sget-object v1, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_20b
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt$Sales;->NORTH_AMERICA:Z

    return-void

    :cond_20e
    move v0, v1

    goto/16 :goto_3f

    :cond_211
    move v0, v1

    goto/16 :goto_81

    :cond_214
    move v0, v1

    goto/16 :goto_a2

    :cond_217
    move v0, v1

    goto/16 :goto_173

    :cond_21a
    move v0, v1

    goto :goto_1aa
.end method
