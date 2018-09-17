.class Lcom/android/server/display/WFDUibcManager$EventDispatcher;
.super Lcom/android/server/display/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# static fields
.field private static final synthetic -com-android-server-display-WFDUibcManager$UIBC_ModeSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$display$WFDUibcManager$UIBC_Mode:[I

.field private Me_X:F

.field private Me_Y:F

.field private Mode:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

.field private bCap:Z

.field private configuration:Landroid/content/res/Configuration;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private ev:Landroid/view/InputEvent;

.field private inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

.field private inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private kH:F

.field private kW:F

.field private kX:F

.field private kY:F

.field private ke:Landroid/view/KeyEvent;

.field private last_Ke:Landroid/view/KeyEvent;

.field private mBroadTime:J

.field private mFlag:I

.field private mKeyDownTime:J

.field private mKeyEvnt_Arr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;",
            ">;"
        }
    .end annotation
.end field

.field private mMetaFlag:I

.field private mRepeatCnt:I

.field private mTouchDownTime:J

.field private mTouchPointerTable:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field private me:Landroid/view/MotionEvent;

.field private outPointerProp:[Landroid/view/MotionEvent$PointerProperties;

.field private outPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private rEv:Ljava/lang/Integer;

.field public volatile running:Z

.field private screenRatio:F

.field final synthetic this$0:Lcom/android/server/display/WFDUibcManager;

.field private wfdRatio:F

.field private wm:Landroid/view/WindowManager;


# direct methods
.method private static synthetic -getcom-android-server-display-WFDUibcManager$UIBC_ModeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->-com-android-server-display-WFDUibcManager$UIBC_ModeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->-com-android-server-display-WFDUibcManager$UIBC_ModeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->values()[Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v1}, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_46

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->FULL_SCREEN:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v1}, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_44

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->NORMAL:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v1}, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_42

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->PORTRAIT_SCREEN:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v1}, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_40

    :goto_32
    :try_start_32
    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v1}, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_3e

    :goto_3b
    sput-object v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->-com-android-server-display-WFDUibcManager$UIBC_ModeSwitchesValues:[I

    return-object v0

    :catch_3e
    move-exception v1

    goto :goto_3b

    :catch_40
    move-exception v1

    goto :goto_32

    :catch_42
    move-exception v1

    goto :goto_29

    :catch_44
    move-exception v1

    goto :goto_20

    :catch_46
    move-exception v1

    goto :goto_17
.end method

.method constructor <init>(Lcom/android/server/display/WFDUibcManager;)V
    .registers 8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-direct {p0, p1, v2}, Lcom/android/server/display/WFDUibcManager$EventQueue;-><init>(Lcom/android/server/display/WFDUibcManager;Lcom/android/server/display/WFDUibcManager$EventQueue;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->running:Z

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    sget-object v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->NORMAL:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Mode:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    iput v3, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    iput-boolean v3, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->bCap:Z

    iput-wide v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mBroadTime:J

    iput-wide v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    iput-wide v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    iput v3, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mFlag:I

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    return-void
.end method

.method private getMetaFlag(IZ)V
    .registers 9

    const/16 v5, 0x71

    const/16 v4, 0x3c

    const/16 v3, 0x3b

    const/16 v2, 0x3a

    const/16 v1, 0x39

    if-eqz p2, :cond_69

    if-eq p1, v3, :cond_10

    if-ne p1, v4, :cond_26

    :cond_10
    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v3, :cond_1e

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_1e
    if-ne p1, v4, :cond_26

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_26
    if-eq p1, v1, :cond_2a

    if-ne p1, v2, :cond_40

    :cond_2a
    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v1, :cond_38

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_38
    if-ne p1, v2, :cond_40

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_40
    if-eq p1, v5, :cond_46

    const/16 v0, 0x72

    if-ne p1, v0, :cond_5e

    :cond_46
    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v5, :cond_54

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_54
    const/16 v0, 0x72

    if-ne p1, v0, :cond_5e

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_5e
    const/16 v0, 0x77

    if-ne p1, v0, :cond_68

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_68
    :goto_68
    return-void

    :cond_69
    if-eq p1, v3, :cond_6d

    if-ne p1, v4, :cond_83

    :cond_6d
    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v3, :cond_7b

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_7b
    if-ne p1, v4, :cond_83

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_83
    if-eq p1, v1, :cond_87

    if-ne p1, v2, :cond_9d

    :cond_87
    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v1, :cond_95

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_95
    if-ne p1, v2, :cond_9d

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_9d
    if-eq p1, v5, :cond_a3

    const/16 v0, 0x72

    if-ne p1, v0, :cond_bb

    :cond_a3
    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v5, :cond_b1

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_b1
    const/16 v0, 0x72

    if-ne p1, v0, :cond_bb

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_bb
    const/16 v0, 0x77

    if-ne p1, v0, :cond_c5

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_c5
    const/16 v0, 0x73

    if-ne p1, v0, :cond_68

    iget-boolean v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->bCap:Z

    if-nez v0, :cond_d8

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->bCap:Z

    goto :goto_68

    :cond_d8
    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->bCap:Z

    goto :goto_68
.end method

.method private handleKeyEvent()V
    .registers 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/KeyEvent;

    const/16 v19, -0x1

    const/16 v18, -0x1

    const/high16 v2, 0x8000000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mFlag:I

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_45

    const-string/jumbo v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Key Device id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const/4 v13, -0x1

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v17

    if-nez v17, :cond_56

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "displayManagerGlobal is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_56
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_5c
    if-ge v2, v4, :cond_79

    aget v20, v3, v2

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v5

    if-eqz v5, :cond_ba

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_ba

    move/from16 v13, v20

    :cond_79
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_99

    const-string/jumbo v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Display id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->-get2(Lcom/android/server/display/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_bd

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_b9

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "Ignore Back key event"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    return-void

    :cond_ba
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_bd
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2f6

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_d2

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "KeyEvent ACTION_DOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_11f

    new-instance v21, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;-><init>(Lcom/android/server/display/WFDUibcManager;Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;)V

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11f
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    :cond_13c
    :goto_13c
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getMetaFlag(IZ)V

    :cond_146
    :goto_146
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1a6

    const-string/jumbo v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "KeyCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " DownTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " RepeatCnt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mMetaFlag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a6
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    if-nez v9, :cond_1b0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_1b0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v2 .. v15}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1f2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    :cond_1f2
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_222

    const-string/jumbo v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "InjectKeyEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_288

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_243

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_288

    :cond_243
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_252

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "send broadcast : Terminate External Display"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_252
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "app_name"

    const-string/jumbo v3, "finish"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_383

    const-string/jumbo v2, "launch_home"

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_27b
    :goto_27b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->-get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_288
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    return-void

    :cond_28e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2c8

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/lit16 v2, v2, 0x80

    move-object/from16 v0, v21

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    :cond_2c8
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_13c

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "Long press detected"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13c

    :cond_2f6
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_146

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_30c

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "KeyEvent ACTION_UP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_365

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;

    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mFlag:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_359
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getMetaFlag(IZ)V

    goto/16 :goto_146

    :cond_365
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    goto :goto_359

    :cond_383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_399

    const-string/jumbo v2, "launch_home"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_27b

    :cond_399
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_27b

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "putExtra : no parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27b
.end method

.method private handleMotionEvent()V
    .registers 47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v35, v0

    check-cast v35, Landroid/view/MotionEvent;

    sget-object v4, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->NORMAL:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Mode:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_54

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "displayMetrics widthPixels: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " heightPixels: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_8f

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mNegRs_X: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v6}, Lcom/android/server/display/WFDUibcManager;->-get6(Lcom/android/server/display/WFDUibcManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mNegRs_Y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v6}, Lcom/android/server/display/WFDUibcManager;->-get7(Lcom/android/server/display/WFDUibcManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    const/4 v14, -0x1

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v26

    if-nez v26, :cond_a0

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "displayId not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a0
    invoke-virtual/range {v26 .. v26}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_a6
    if-ge v4, v6, :cond_c3

    aget v29, v5, v4

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v7

    if-eqz v7, :cond_d7

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v7

    iget v7, v7, Landroid/view/DisplayInfo;->type:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_d7

    move/from16 v14, v29

    :cond_c3
    if-ltz v14, :cond_cd

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    if-nez v4, :cond_da

    :cond_cd
    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "displayId not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d7
    add-int/lit8 v4, v4, 0x1

    goto :goto_a6

    :cond_da
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_10d

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "displayId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " rotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v6

    iget v6, v6, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10d
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    if-eqz v4, :cond_140

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_12b

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2b9

    :cond_12b
    :goto_12b
    sget-object v4, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->PORTRAIT_SCREEN:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Mode:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_140

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "PORTRAIT_SCREEN Mode for portrait sink!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sidesync_source_connect"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_172

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get2(Lcom/android/server/display/WFDUibcManager;)Z

    move-result v4

    if-eqz v4, :cond_2c5

    :cond_172
    sget-object v4, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Mode:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_187

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "FORCE_VALUE will be set!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_187
    :goto_187
    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_424

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1bb

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION SCROLL TIME : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/16 v6, 0x9

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/16 v6, 0xa

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v10, 0xa

    sub-long/2addr v6, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0xa

    const/16 v18, 0x0

    const/16 v19, 0x2002

    const/high16 v20, 0x8000000

    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2a7

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Scroll Inject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a7
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    return-void

    :cond_2b9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get3(Lcom/android/server/display/WFDUibcManager;)Z

    move-result v4

    if-eqz v4, :cond_140

    goto/16 :goto_12b

    :cond_2c5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get5(Lcom/android/server/display/WFDUibcManager;)Z

    move-result v4

    if-eqz v4, :cond_2e6

    sget-object v4, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->FULL_SCREEN:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Mode:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_187

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "AuSLService Running setting FULL_SCREEN Mode!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_187

    :cond_2e6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get8(Lcom/android/server/display/WFDUibcManager;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_187

    const-string/jumbo v4, "android.hardware.display.category.PRESENTATION"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v43

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_31d

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received presentationDisplays amount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31d
    invoke-virtual/range {v34 .. v34}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v22

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_344

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received alldisplays amount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_344
    const/16 v28, 0x0

    :goto_346
    move-object/from16 v0, v43

    array-length v4, v0

    move/from16 v0, v28

    if-ge v0, v4, :cond_187

    aget-object v25, v43, v28

    invoke-virtual/range {v25 .. v25}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v14, v4, :cond_420

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_37c

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "presentation display ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get8(Lcom/android/server/display/WFDUibcManager;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3ef

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get8(Lcom/android/server/display/WFDUibcManager;)I

    move-result v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3ef

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get8(Lcom/android/server/display/WFDUibcManager;)I

    move-result v4

    if-ne v14, v4, :cond_3ef

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_3de

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "presentation( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v6}, Lcom/android/server/display/WFDUibcManager;->-get8(Lcom/android/server/display/WFDUibcManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ) has content"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3de
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v4, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Mode:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    goto/16 :goto_187

    :cond_3ef
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_187

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "presentation( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v6}, Lcom/android/server/display/WFDUibcManager;->-get8(Lcom/android/server/display/WFDUibcManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ) doesn\'t have content"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_187

    :cond_420
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_346

    :cond_424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kH:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kW:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v24

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v30

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/16 v21, -0x1

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6f9

    const/16 v30, 0x0

    const/4 v8, 0x0

    const/16 v24, 0x1

    :cond_484
    :goto_484
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_4a8

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UIBC mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Mode:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a8
    const/16 v28, 0x0

    :goto_4aa
    move/from16 v0, v28

    move/from16 v1, v24

    if-ge v0, v1, :cond_e3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v28

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v28

    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_544

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Point ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v6, v6, v28

    iget v6, v6, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", inPtrCoords["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "].x: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v28

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " inPtrCoords["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "].y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v28

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_544
    invoke-static {}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->-getcom-android-server-display-WFDUibcManager$UIBC_ModeSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Mode:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v5}, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1170

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get6(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v5}, Lcom/android/server/display/WFDUibcManager;->-get7(Lcom/android/server/display/WFDUibcManager;)F

    move-result v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wfdRatio:F

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_5b5

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UIBC Mode is default configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b5
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_5e8

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "screenRatio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->screenRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " wfdRatio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wfdRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c34

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b72

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kW:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v5}, Lcom/android/server/display/WFDUibcManager;->-get7(Lcom/android/server/display/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kH:F

    div-float v39, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get6(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v39

    const/high16 v5, 0x40000000    # 2.0f

    div-float v42, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get6(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v40, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v40, v42

    div-float v5, v5, v39

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    :cond_671
    :goto_671
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_6a4

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Value Me_X="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Me_Y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get9(Lcom/android/server/display/WFDUibcManager;)I

    move-result v4

    if-lez v4, :cond_d5e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_6c6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d15

    :cond_6c6
    const/4 v4, 0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_dcb

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dcb

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Out of Range, Change to ACTION_UP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v28

    iget v0, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    move/from16 v21, v0

    :cond_6f5
    :goto_6f5
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_4aa

    :cond_6f9
    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_484

    const/16 v30, 0x1

    const/4 v8, 0x1

    const/16 v24, 0x1

    goto/16 :goto_484

    :pswitch_707
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_716

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "UIBC Mode is PRESENTATION"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_716
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_671

    :pswitch_756
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v44

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_784

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UIBC Mode is Full Screen: rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_784
    if-nez v44, :cond_7ce

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v28

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    :goto_7b0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_671

    :cond_7ce
    const/4 v4, 0x3

    move/from16 v0, v44

    if-ne v0, v4, :cond_806

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v28

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v28

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto :goto_7b0

    :cond_806
    const/4 v4, 0x2

    move/from16 v0, v44

    if-ne v0, v4, :cond_837

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v28

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_7b0

    :cond_837
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_7b0

    :pswitch_85b
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_86a

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "UIBC Mode is foreceValue"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_671

    :pswitch_8aa
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_8b9

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "UIBC Mode is PORTRAIT_SCREEN"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get6(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v5}, Lcom/android/server/display/WFDUibcManager;->-get7(Lcom/android/server/display/WFDUibcManager;)F

    move-result v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wfdRatio:F

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_919

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UIBC Mode is default configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_919
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_94c

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "screenRatio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->screenRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " wfdRatio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wfdRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a16

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_964

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Source device is ORIENTATION_LANDSCAPE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_964
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kH:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v5}, Lcom/android/server/display/WFDUibcManager;->-get7(Lcom/android/server/display/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kW:F

    div-float v38, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get6(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v38

    const/high16 v5, 0x40000000    # 2.0f

    div-float v42, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get6(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v41, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sub-float v5, v41, v42

    div-float v5, v5, v38

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_671

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "newWidth= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pad= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " normY= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_671

    :cond_a16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_671

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_a2e

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Source device is ORIENTATION_PORTRAIT"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_ab0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kH:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v5}, Lcom/android/server/display/WFDUibcManager;->-get7(Lcom/android/server/display/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kW:F

    div-float v38, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get6(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v38

    const/high16 v5, 0x40000000    # 2.0f

    div-float v42, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get6(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v41, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sub-float v5, v41, v42

    div-float v5, v5, v38

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_671

    :cond_ab0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b32

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kW:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v5}, Lcom/android/server/display/WFDUibcManager;->-get6(Lcom/android/server/display/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kH:F

    div-float v39, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get7(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v39

    const/high16 v5, 0x40000000    # 2.0f

    div-float v42, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get7(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v40, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v40, v42

    div-float v5, v5, v39

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_671

    :cond_b32
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_671

    :cond_b72
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_bf4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kH:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v5}, Lcom/android/server/display/WFDUibcManager;->-get6(Lcom/android/server/display/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kW:F

    div-float v38, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get7(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v38

    const/high16 v5, 0x40000000    # 2.0f

    div-float v42, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get7(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v41, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sub-float v5, v41, v42

    div-float v5, v5, v38

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_671

    :cond_bf4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_671

    :cond_c34
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_cb6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kW:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v5}, Lcom/android/server/display/WFDUibcManager;->-get7(Lcom/android/server/display/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kH:F

    div-float v39, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get6(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v39

    const/high16 v5, 0x40000000    # 2.0f

    div-float v42, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get6(Lcom/android/server/display/WFDUibcManager;)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v40, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v40, v42

    mul-float/2addr v4, v5

    div-float v4, v4, v39

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_671

    :cond_cb6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wfdRatio:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_d0a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_671

    :cond_d0a
    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Skip event, ratio wrong"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_671

    :cond_d15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_6c6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_6c6

    const/4 v4, 0x2

    move/from16 v0, v30

    if-ne v0, v4, :cond_df2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_df2

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "In Range, Change to ACTION_DOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v28

    iget v0, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    move/from16 v21, v0

    :cond_d5e
    :goto_d5e
    new-instance v31, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v31 .. v31}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v28

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_db4

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Put Pointer ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v6, v6, v28

    iget v6, v6, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", x : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget v6, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", y : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget v6, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_db4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v4, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6f5

    :cond_dcb
    const/4 v4, 0x2

    move/from16 v0, v30

    if-eq v0, v4, :cond_6f5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6f5

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Out of Range, Skip Event"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_df2
    if-nez v30, :cond_e16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e16

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Skip ACTION_DOWN, Change to ACTION_MOVE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    goto/16 :goto_d5e

    :cond_e16
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_d5e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v5, v5, v28

    iget v5, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d5e

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Skip ACTION_UP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-nez v4, :cond_e57

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_e56

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Not available PointerTable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e56
    return-void

    :cond_e57
    const/4 v4, -0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_e67

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v0, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    move/from16 v21, v0

    :cond_e67
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    const/16 v33, 0x0

    :goto_e83
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ec0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v4, v33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v5, v4, v33

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v33

    iget v4, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    move/from16 v0, v21

    if-ne v4, v0, :cond_eb4

    move/from16 v21, v33

    :cond_eb4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v33

    const/4 v5, 0x1

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    add-int/lit8 v33, v33, 0x1

    goto :goto_e83

    :cond_ec0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    new-array v0, v4, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_f3f

    const/16 v33, 0x0

    :goto_ee8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    move/from16 v0, v33

    if-ge v0, v4, :cond_f3f

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v6, v6, v33

    iget v6, v6, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", X : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v33

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Y : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v33

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v33, v33, 0x1

    goto :goto_ee8

    :cond_f3f
    packed-switch v8, :pswitch_data_117c

    :pswitch_f42
    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Not available action"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_f4c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_f97

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    move/from16 v0, v21

    if-lt v0, v4, :cond_f93

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not available index, length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f93
    shl-int/lit8 v4, v21, 0x8

    or-int/lit8 v8, v4, 0x5

    :cond_f97
    :goto_f97
    :pswitch_f97
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_fbb

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Device id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fbb
    if-nez v8, :cond_fc5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    :cond_fc5
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/high16 v20, 0x8000000

    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_101b

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "InjectTouchEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_101b
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    and-int/lit16 v4, v8, 0xff

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1031

    and-int/lit16 v4, v8, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1079

    :cond_1031
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1066

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remove Pointer, Action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, v8, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v6, v6, v21

    iget v6, v6, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->outPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v5, v5, v21

    iget v5, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1079
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Mode:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    sget-object v5, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    if-eq v4, v5, :cond_1114

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get4(Lcom/android/server/display/WFDUibcManager;)Z

    move-result v4

    if-nez v4, :cond_1114

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v36

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_10ba

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TimeGap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mBroadTime:J

    sub-long v6, v36, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10ba
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mBroadTime:J

    sub-long v4, v36, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_1114

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_10d5

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Send intent (com.samsung.intent.action.SEC_UIBC_GET_FOCUS)"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10d5
    :try_start_10d5
    new-instance v45, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.SEC_UIBC_GET_FOCUS"

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "UIBC_X"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_X:F

    float-to-int v5, v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "UIBC_Y"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->Me_Y:F

    float-to-int v5, v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "DISPLAY_ID"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_110e
    .catch Ljava/lang/Exception; {:try_start_10d5 .. :try_end_110e} :catch_1162

    :goto_110e
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mBroadTime:J

    :cond_1114
    return-void

    :pswitch_1115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_f97

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    move/from16 v0, v21

    if-lt v0, v4, :cond_115c

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not available index, length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_115c
    shl-int/lit8 v4, v21, 0x8

    or-int/lit8 v8, v4, 0x6

    goto/16 :goto_f97

    :catch_1162
    move-exception v27

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Exception sendBroadcast(com.samsung.intent.action.SEC_UIBC_GET_FOCUS): "

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_110e

    nop

    :pswitch_data_1170
    .packed-switch 0x1
        :pswitch_85b
        :pswitch_756
        :pswitch_8aa
        :pswitch_707
    .end packed-switch

    :pswitch_data_117c
    .packed-switch 0x0
        :pswitch_f4c
        :pswitch_1115
        :pswitch_f97
        :pswitch_f42
        :pswitch_f42
        :pswitch_f4c
        :pswitch_1115
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .registers 11

    const/16 v9, 0x87

    const/16 v8, 0x2d

    const/16 v6, 0xa

    const/4 v7, 0x0

    new-array v4, v6, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-array v4, v6, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v6, :cond_27

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->inPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_27
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    :cond_3f
    :goto_3f
    iget-boolean v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->running:Z

    if-eqz v4, :cond_206

    invoke-virtual {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getNextEvent()Landroid/view/InputEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    invoke-virtual {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getRotateEvent()Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    if-eqz v4, :cond_3f

    :cond_57
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_79

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Recvd Event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_9b

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Recvd Event(Rotate): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v4, v4, Landroid/view/MotionEvent;

    if-eqz v4, :cond_1d8

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->handleMotionEvent()V

    :cond_a4
    :goto_a4
    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accelerometer_rotation"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accelerometer_rotation"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_rotation"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_fa

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current rotation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fa
    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get5(Lcom/android/server/display/WFDUibcManager;)Z

    move-result v4

    if-eqz v4, :cond_1e3

    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_120

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Setting SPECIAL rotation!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_120
    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    iput-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    :goto_124
    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/lit16 v4, v4, 0x168

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_148

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit16 v4, v4, 0x168

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    :cond_148
    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x13b

    if-le v4, v5, :cond_1f4

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x168

    if-gt v4, v5, :cond_1f4

    :goto_15c
    const/4 v3, 0x0

    :cond_15d
    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v8, :cond_16e

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v9, :cond_16e

    const/4 v3, 0x1

    :cond_16e
    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v9, :cond_181

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xe1

    if-gt v4, v5, :cond_181

    const/4 v3, 0x2

    :cond_181
    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xe1

    if-le v4, v5, :cond_196

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x13b

    if-gt v4, v5, :cond_196

    const/4 v3, 0x3

    :cond_196
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1b6

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Rotation set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b6
    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_rotation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->-get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accelerometer_rotation"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3f

    :cond_1d8
    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v4, v4, Landroid/view/KeyEvent;

    if-eqz v4, :cond_a4

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->handleKeyEvent()V

    goto/16 :goto_a4

    :cond_1e3
    mul-int/lit8 v4, v3, 0x5a

    iget-object v5, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    goto/16 :goto_124

    :cond_1f4
    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_15d

    iget-object v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v8, :cond_15d

    goto/16 :goto_15c

    :cond_206
    return-void
.end method
