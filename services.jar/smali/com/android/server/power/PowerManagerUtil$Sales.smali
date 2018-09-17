.class public Lcom/android/server/power/PowerManagerUtil$Sales;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sales"
.end annotation


# static fields
.field public static final ATT:Z

.field public static final CANADA:Z

.field public static final CHINA:Z

.field public static final JAPAN:Z

.field public static final KOR:Z

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

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    const-string/jumbo v0, "VZW"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->VZW:Z

    const-string/jumbo v0, "ATT"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27c

    const-string/jumbo v0, "AIO"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27c

    const-string/jumbo v0, "CRI"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_3f
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->ATT:Z

    const-string/jumbo v0, "TMB"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27f

    const-string/jumbo v0, "TMK"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_55
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->TMO:Z

    const-string/jumbo v0, "SPR"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_282

    const-string/jumbo v0, "BST"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_282

    const-string/jumbo v0, "VMU"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_282

    const-string/jumbo v0, "XAS"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_81
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->SPR:Z

    const-string/jumbo v0, "USC"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_285

    const-string/jumbo v0, "LRA"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_285

    const-string/jumbo v0, "ACG"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_a2
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->USCC:Z

    const-string/jumbo v0, "RWC"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "FMC"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "MTA"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "CHR"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "MTS"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "TLS"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "KDO"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "SPC"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "CLN"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "BMC"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "VMC"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "PCM"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "SOL"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "BWA"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "GLW"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "VTR"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "ESK"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "PMB"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string/jumbo v0, "XAC"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_173
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->CANADA:Z

    const-string/jumbo v0, "CHN"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b

    const-string/jumbo v0, "CHU"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b

    const-string/jumbo v0, "CTC"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b

    const-string/jumbo v0, "CHM"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b

    const-string/jumbo v0, "CHC"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1aa
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->CHINA:Z

    const-string/jumbo v0, "DCM"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->JAPAN:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->VZW:Z

    if-nez v0, :cond_28e

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->ATT:Z

    if-nez v0, :cond_28e

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->TMO:Z

    if-nez v0, :cond_28e

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->SPR:Z

    if-nez v0, :cond_28e

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->USCC:Z

    if-nez v0, :cond_28e

    const-string/jumbo v0, "XAR"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28e

    const-string/jumbo v0, "MTR"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28e

    const-string/jumbo v0, "SPT"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28e

    const-string/jumbo v0, "CSP"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28e

    const-string/jumbo v0, "TFN"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28e

    const-string/jumbo v0, "BNN"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_20b
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->NORTH_AMERICA:Z

    const-string/jumbo v0, "KOO"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_279

    const-string/jumbo v0, "SKT"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_279

    const-string/jumbo v0, "SKC"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_279

    const-string/jumbo v0, "SKO"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_279

    const-string/jumbo v0, "KTT"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_279

    const-string/jumbo v0, "KTC"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_279

    const-string/jumbo v0, "KTO"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_279

    const-string/jumbo v0, "LGT"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_279

    const-string/jumbo v0, "LUC"

    sget-object v2, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_279

    const-string/jumbo v0, "LUO"

    sget-object v1, Lcom/android/server/power/PowerManagerUtil$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_279
    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil$Sales;->KOR:Z

    return-void

    :cond_27c
    move v0, v1

    goto/16 :goto_3f

    :cond_27f
    move v0, v1

    goto/16 :goto_55

    :cond_282
    move v0, v1

    goto/16 :goto_81

    :cond_285
    move v0, v1

    goto/16 :goto_a2

    :cond_288
    move v0, v1

    goto/16 :goto_173

    :cond_28b
    move v0, v1

    goto/16 :goto_1aa

    :cond_28e
    move v0, v1

    goto/16 :goto_20b
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
