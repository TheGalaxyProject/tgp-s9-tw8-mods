.class public Lcom/samsung/android/hardware/display/AfterimageCompensationService;
.super Ljava/lang/Object;
.source "AfterimageCompensationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;,
        Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DISPLAY_ON_TIME:Ljava/lang/String; = "com.sec.android.app.server.power.DISPLAY_ON_TIME"

.field private static final TAG:Ljava/lang/String; = "AfterimageCompensationService"


# instance fields
.field private final AFC_COPR_ROI_MAX_INDEX:I

.field private final AFC_COPR_ROI_MAX_NUMBER:I

.field private final AFC_COPR_ROI_MAX_VALUE:I

.field private final AFC_COPR_ROI_TABLE_SIZE:I

.field private final AFC_COPR_ROI_XY_NUMBER:I

.field private final AFC_DEFAULT_VALUE:Ljava/lang/String;

.field private final AFC_DISPLAY_ON_TIME:Ljava/lang/String;

.field private final AFC_LOGGING_DATA:Ljava/lang/String;

.field private final AFC_LOGGING_DATA_SIZE:I

.field private final AFC_LUX_MAX_NUMBER:I

.field private final AFC_MAX_COUNT:I

.field private final AFC_PANEL_CELL_ID:Ljava/lang/String;

.field private final AFC_REG_DATA:Ljava/lang/String;

.field private final AFC_RGB_ADDRESS:I

.field private final AFC_RGB_MAX_NUMBER:I

.field private final AFC_RGB_NUMBER:I

.field private final AFC_STATE_0:I

.field private final AFC_STATE_1:I

.field private final AFC_STATE_2:I

.field private final AFC_STATE_3:I

.field private final AFC_STATE_END:I

.field private final AFC_TABLE_SIZE:I

.field private final AFC_XRGB_BASE_POINT:I

.field private final AFC_XRGB_MAX_INDEX:I

.field private final AFC_XRGB_MAX_VALUE:I

.field private final AFC_XRGB_TABLE_SIZE:I

.field private final AFC_XY_COPR_ROI_SIZE:I

.field private AfcStateCondition:Z

.field private AfcThreadCondition:Z

.field private final BRIGHTNESS_MAX_NUMBER:I

.field private final BRIGHTNESS_MAX_VALUE:I

.field private final DEBUG:Z

.field private final MSG_RGB_DEBOUNCE:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_STATE_0:I

.field private final MSG_STATE_1:I

.field private final MSG_STATE_2:I

.field private final MSG_STATE_3:I

.field private final MSG_STATE_END:I

.field private final MSG_TERMINATE_SCR_RGB:I

.field private final MSG_TERMINATE_VIDEO_MODE:I

.field private final SYSFS_AFC_FILE_PATH:Ljava/lang/String;

.field private final SYSFS_BRIGHTNESS_FILE_PATH:Ljava/lang/String;

.field private final SYSFS_COPR_FILE_PATH:Ljava/lang/String;

.field private final SYSFS_PANEL_CELL_ID:Ljava/lang/String;

.field private interpolationCoprRoi:[I

.field private interpolationCoprRoiDouble:[D

.field private interpolationCount:I

.field private interpolationLuminance:I

.field private interpolationLuminanceDouble:D

.field private mAfcLoggingDataValid:Z

.field private mAfcState:I

.field private mAfcTable:[[[I

.field private mAfcThread:Ljava/lang/Thread;

.field private mBrightnessBorderValue:[I

.field private final mContext:Landroid/content/Context;

.field private mCoprRoi:[I

.field private mCoprRoiTable:[[I

.field private mLuminance:I

.field private mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

.field private mXrgbTable:[[I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[[I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoiTable:[[I

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    return-wide v0
.end method

.method static synthetic -get7(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D
    .registers 4

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    return-wide p1
.end method

.method static synthetic -set3(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getCoprRoiNBrightness()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/hardware/display/AfterimageCompensationService;IID)D
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getAverage(IID)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->display_compensation(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->writeLoggingDataEfs()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 20

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v14, "eng"

    sget-object v15, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    const-string/jumbo v14, "/sys/class/lcd/panel/copr_roi"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_COPR_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v14, "/sys/class/lcd/panel/brt_avg"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_BRIGHTNESS_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v14, "/sys/class/mdnie/mdnie/afc"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_AFC_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v14, "/sys/class/lcd/panel/cell_id"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_PANEL_CELL_ID:Ljava/lang/String;

    const-string/jumbo v14, "/efs/afc/cell_id"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_PANEL_CELL_ID:Ljava/lang/String;

    const-string/jumbo v14, "/efs/afc/logging_data"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_LOGGING_DATA:Ljava/lang/String;

    const-string/jumbo v14, "/efs/afc/afc_data"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_REG_DATA:Ljava/lang/String;

    const-string/jumbo v14, "/efs/afc/display_on_time"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DISPLAY_ON_TIME:Ljava/lang/String;

    const-string/jumbo v14, "0"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DEFAULT_VALUE:Ljava/lang/String;

    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_LOGGING_DATA_SIZE:I

    const v14, 0x10c8e0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_MAX_COUNT:I

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_RGB_NUMBER:I

    const/16 v14, 0xb

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BRIGHTNESS_MAX_NUMBER:I

    const/16 v14, 0xc

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_MAX_NUMBER:I

    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_XY_NUMBER:I

    const/16 v14, 0x100

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_MAX_VALUE:I

    const/16 v14, 0x101

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_MAX_INDEX:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_MAX_VALUE:I

    const/16 v14, 0x100

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_MAX_INDEX:I

    const/16 v14, 0xb

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_LUX_MAX_NUMBER:I

    const/16 v14, 0x168

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_RGB_MAX_NUMBER:I

    const/16 v14, 0x78

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_RGB_ADDRESS:I

    const/16 v14, 0x88

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_BASE_POINT:I

    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XY_COPR_ROI_SIZE:I

    const/16 v14, 0x303

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_TABLE_SIZE:I

    const/16 v14, 0x300

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_TABLE_SIZE:I

    const/16 v14, 0x3de0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TABLE_SIZE:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_0:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_1:I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_2:I

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_3:I

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_END:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_STATE_0:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_STATE_1:I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_STATE_2:I

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_STATE_3:I

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_STATE_END:I

    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_SET_VIDEO_MODE:I

    const/4 v14, 0x6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_SET_BROWSER_MODE:I

    const/4 v14, 0x7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_TERMINATE_VIDEO_MODE:I

    const/16 v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_TERMINATE_SCR_RGB:I

    const/16 v14, 0x9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_RGB_DEBOUNCE:I

    const/16 v14, 0x5dc

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BRIGHTNESS_MAX_VALUE:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    const/16 v14, 0xb

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    const/16 v14, 0xc

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    const/16 v14, 0xc

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    const/16 v14, 0xc

    new-array v14, v14, [D

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v14, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v14, "com.sec.android.app.server.power.DISPLAY_ON_TIME"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;)V

    invoke-virtual {v14, v15, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "/sys/class/lcd/panel/copr_roi"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1ac

    const/4 v7, 0x1

    :cond_1ac
    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "/sys/class/lcd/panel/brt_avg"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "/sys/class/mdnie/mdnie/afc"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070014

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107000d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070013

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070025

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107000e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    if-eqz v7, :cond_329

    array-length v14, v8

    const/16 v15, 0x10

    if-ne v14, v15, :cond_329

    array-length v14, v3

    const/16 v15, 0x303

    if-ne v14, v15, :cond_329

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    array-length v14, v14

    const/16 v15, 0xb

    if-ne v14, v15, :cond_329

    array-length v14, v10

    const/16 v15, 0x300

    if-ne v14, v15, :cond_329

    array-length v14, v2

    const/16 v15, 0x3de0

    if-ne v14, v15, :cond_329

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x3

    const/16 v16, 0x101

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoiTable:[[I

    const/4 v9, 0x0

    :goto_24a
    const/4 v14, 0x3

    if-ge v9, v14, :cond_267

    const/4 v12, 0x0

    move v5, v4

    :goto_24f
    const/16 v14, 0x101

    if-ge v12, v14, :cond_263

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoiTable:[[I

    aget-object v14, v14, v9

    add-int/lit8 v4, v5, 0x1

    aget v15, v3, v5

    aput v15, v14, v12

    add-int/lit8 v12, v12, 0x1

    move v5, v4

    goto :goto_24f

    :cond_263
    add-int/lit8 v9, v9, 0x1

    move v4, v5

    goto :goto_24a

    :cond_267
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x3

    const/16 v16, 0x100

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mXrgbTable:[[I

    const/4 v9, 0x0

    :goto_27e
    const/4 v14, 0x3

    if-ge v9, v14, :cond_29b

    const/4 v12, 0x0

    move v5, v4

    :goto_283
    const/16 v14, 0x100

    if-ge v12, v14, :cond_297

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mXrgbTable:[[I

    aget-object v14, v14, v9

    add-int/lit8 v4, v5, 0x1

    aget v15, v10, v5

    aput v15, v14, v12

    add-int/lit8 v12, v12, 0x1

    move v5, v4

    goto :goto_283

    :cond_297
    add-int/lit8 v9, v9, 0x1

    move v4, v5

    goto :goto_27e

    :cond_29b
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x4

    const/16 v16, 0xb

    const/16 v17, 0x168

    filled-new-array/range {v15 .. v17}, [I

    move-result-object v15

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[[I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcTable:[[[I

    const/4 v9, 0x0

    :goto_2b5
    const/4 v14, 0x4

    if-ge v9, v14, :cond_2dc

    const/4 v12, 0x0

    :goto_2b9
    const/16 v14, 0xb

    if-ge v12, v14, :cond_2d9

    const/4 v13, 0x0

    move v5, v4

    :goto_2bf
    const/16 v14, 0x168

    if-ge v13, v14, :cond_2d5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcTable:[[[I

    aget-object v14, v14, v9

    aget-object v14, v14, v12

    add-int/lit8 v4, v5, 0x1

    aget v15, v2, v5

    aput v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    move v5, v4

    goto :goto_2bf

    :cond_2d5
    add-int/lit8 v12, v12, 0x1

    move v4, v5

    goto :goto_2b9

    :cond_2d9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b5

    :cond_2dc
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget v14, v8, v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :goto_2e8
    array-length v14, v8

    if-ge v4, v14, :cond_2f9

    const-string/jumbo v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v8, v4

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e8

    :cond_2f9
    const-string/jumbo v14, "AfterimageCompensationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "COPR ROI XY - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "/sys/class/lcd/panel/copr_roi"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->update_check_panel_id()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->makeInitEfsFile()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->initLoggingData()V

    :goto_328
    return-void

    :cond_329
    const-string/jumbo v14, "AfterimageCompensationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Init Failed  mAfcSupport = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", mXY.length - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", coprRoiTableArray.length - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v3

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "AfterimageCompensationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Init Failed  xrgbTableArray.length - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v10

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", afcTableArray.length - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v2

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_328
.end method

.method private display_compensation(I)V
    .registers 13

    const-string/jumbo v8, "AfterimageCompensationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AfcThread display_compensation - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_241

    const/4 v8, 0x4

    if-gt p1, v8, :cond_241

    const/4 v2, 0x0

    const/16 v8, 0xc

    new-array v7, v8, [I

    const/16 v8, 0xc

    new-array v4, v8, [I

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-lt v8, v9, :cond_e3

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_e3

    const/4 v6, 0x0

    :goto_40
    if-eqz v5, :cond_242

    const/4 v2, 0x0

    :goto_43
    const/16 v8, 0xc

    if-ge v2, v8, :cond_1c4

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v8, v8, v2

    if-ltz v8, :cond_1be

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v8, v8, v2

    const/16 v9, 0xff

    if-gt v8, v9, :cond_1be

    rem-int/lit8 v3, v2, 0x3

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mXrgbTable:[[I

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v9, v9, v2

    aget v8, v8, v9

    aput v8, v7, v2

    aget v8, v7, v2

    const/16 v9, 0x88

    if-lt v8, v9, :cond_1b8

    aget v8, v7, v2

    const/16 v9, 0xff

    if-gt v8, v9, :cond_1b8

    aget v8, v7, v2

    add-int/lit16 v8, v8, -0xff

    neg-int v3, v8

    rem-int/lit8 v8, v2, 0x3

    mul-int/lit8 v8, v8, 0x78

    add-int/2addr v3, v8

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcTable:[[[I

    add-int/lit8 v9, p1, -0x1

    aget-object v8, v8, v9

    aget-object v8, v8, v6

    aget v8, v8, v3

    aput v8, v4, v2

    const-string/jumbo v8, "AfterimageCompensationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AFC i = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mLuminance  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mXRGB -  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v7, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", index  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mAFC  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget v8, v4, v2

    const/16 v9, 0x88

    if-lt v8, v9, :cond_db

    aget v8, v4, v2

    const/16 v9, 0xff

    if-le v8, v9, :cond_df

    :cond_db
    const/16 v8, 0xff

    aput v8, v4, v2

    :cond_df
    :goto_df
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_43

    :cond_e3
    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    if-lt v8, v9, :cond_f8

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    if-ge v8, v9, :cond_f8

    const/4 v6, 0x1

    goto/16 :goto_40

    :cond_f8
    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    if-lt v8, v9, :cond_10d

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    if-ge v8, v9, :cond_10d

    const/4 v6, 0x2

    goto/16 :goto_40

    :cond_10d
    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    if-lt v8, v9, :cond_122

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x4

    aget v9, v9, v10

    if-ge v8, v9, :cond_122

    const/4 v6, 0x3

    goto/16 :goto_40

    :cond_122
    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x4

    aget v9, v9, v10

    if-lt v8, v9, :cond_137

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x5

    aget v9, v9, v10

    if-ge v8, v9, :cond_137

    const/4 v6, 0x4

    goto/16 :goto_40

    :cond_137
    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x5

    aget v9, v9, v10

    if-lt v8, v9, :cond_14c

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x6

    aget v9, v9, v10

    if-ge v8, v9, :cond_14c

    const/4 v6, 0x5

    goto/16 :goto_40

    :cond_14c
    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x6

    aget v9, v9, v10

    if-lt v8, v9, :cond_161

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x7

    aget v9, v9, v10

    if-ge v8, v9, :cond_161

    const/4 v6, 0x6

    goto/16 :goto_40

    :cond_161
    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v10, 0x7

    aget v9, v9, v10

    if-lt v8, v9, :cond_177

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/16 v10, 0x8

    aget v9, v9, v10

    if-ge v8, v9, :cond_177

    const/4 v6, 0x7

    goto/16 :goto_40

    :cond_177
    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/16 v10, 0x8

    aget v9, v9, v10

    if-lt v8, v9, :cond_18f

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/16 v10, 0x9

    aget v9, v9, v10

    if-ge v8, v9, :cond_18f

    const/16 v6, 0x8

    goto/16 :goto_40

    :cond_18f
    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/16 v10, 0x9

    aget v9, v9, v10

    if-lt v8, v9, :cond_1a7

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/16 v10, 0xa

    aget v9, v9, v10

    if-ge v8, v9, :cond_1a7

    const/16 v6, 0x9

    goto/16 :goto_40

    :cond_1a7
    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/16 v10, 0xa

    aget v9, v9, v10

    if-lt v8, v9, :cond_1b5

    const/16 v6, 0xa

    goto/16 :goto_40

    :cond_1b5
    const/4 v6, 0x0

    goto/16 :goto_40

    :cond_1b8
    const/16 v8, 0xff

    aput v8, v4, v2

    goto/16 :goto_df

    :cond_1be
    const/16 v8, 0xff

    aput v8, v4, v2

    goto/16 :goto_df

    :cond_1c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "1 "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    :goto_1d0
    const/4 v8, 0x6

    if-ge v2, v8, :cond_1e1

    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d0

    :cond_1e1
    const/4 v2, 0x3

    :goto_1e2
    const/4 v8, 0x6

    if-ge v2, v8, :cond_1f3

    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e2

    :cond_1f3
    const-string/jumbo v8, " 255 255 255"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    :goto_1fa
    const/4 v8, 0x6

    if-ge v2, v8, :cond_20b

    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1fa

    :cond_20b
    const-string/jumbo v8, "AfterimageCompensationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AFC - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "/sys/class/mdnie/mdnie/afc"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v8, "/efs/afc/afc_data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_239
    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_241

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    :cond_241
    return-void

    :cond_242
    const-string/jumbo v8, "/sys/class/mdnie/mdnie/afc"

    const-string/jumbo v9, "0"

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v8, "AfterimageCompensationService"

    const-string/jumbo v9, "AFC Data - 0"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_239
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    if-eqz v5, :cond_2b

    const-string/jumbo v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fileWriteString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :try_start_2b
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_35} :catch_41
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_35} :catch_5d

    :try_start_35
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3f} :catch_6a

    const/4 v5, 0x1

    return v5

    :catch_41
    move-exception v0

    :try_start_42
    const-string/jumbo v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fileWriteString : file not found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_5c} :catch_5d

    return v8

    :catch_5d
    move-exception v1

    :goto_5e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_61
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65

    :goto_64
    return v8

    :catch_65
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_64

    :catch_6a
    move-exception v1

    move-object v3, v4

    goto :goto_5e
.end method

.method private getAfcLoggingData()Z
    .registers 12

    const/16 v10, 0xf

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_4
    const-string/jumbo v7, "/efs/afc/logging_data"

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_f5

    move-result-object v6

    :try_start_18
    array-length v7, v6

    if-ne v7, v10, :cond_d7

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    const-string/jumbo v7, "AfterimageCompensationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mAfcState - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    const-string/jumbo v7, "AfterimageCompensationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "interpolationCount - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    const-string/jumbo v7, "AfterimageCompensationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "interpolationLuminance - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v2, 0x3

    :goto_98
    if-ge v2, v10, :cond_d6

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget-object v8, v6, v2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v4

    const-string/jumbo v7, "AfterimageCompensationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "interpolationCoprRoi_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " value - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_d1} :catch_d8
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_d1} :catch_f5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    :cond_d6
    const/4 v3, 0x1

    :cond_d7
    :goto_d7
    return v3

    :catch_d8
    move-exception v1

    const/4 v3, 0x0

    :try_start_da
    const-string/jumbo v7, "AfterimageCompensationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NumberFormatException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_f4} :catch_f5

    goto :goto_d7

    :catch_f5
    move-exception v0

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d7
.end method

.method private getAverage(IID)D
    .registers 14

    int-to-double v2, p1

    int-to-double v4, p2

    if-lez p1, :cond_12

    const v6, 0x10c8e0

    if-gt p1, v6, :cond_12

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v2, v6

    mul-double/2addr v6, p3

    add-double/2addr v6, v4

    div-double v0, v6, v2

    :goto_11
    return-wide v0

    :cond_12
    move-wide v0, v4

    goto :goto_11
.end method

.method private getCoprRoiNBrightness()Z
    .registers 13

    const/16 v11, 0xc

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_6
    const-string/jumbo v8, "/sys/class/lcd/panel/copr_roi"

    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4c

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "AfterimageCompensationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CoprRoi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_9a

    :try_start_34
    array-length v8, v6

    if-ne v8, v11, :cond_4c

    const/4 v2, 0x0

    :goto_38
    if-ge v2, v11, :cond_4b

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v2
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_48} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_48} :catch_9a

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_4b
    const/4 v4, 0x1

    :cond_4c
    :goto_4c
    :try_start_4c
    const-string/jumbo v8, "/sys/class/lcd/panel/brt_avg"

    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7a

    const-string/jumbo v8, "AfterimageCompensationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BRIGHTNESS = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6f} :catch_bd

    :try_start_6f
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_77} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_77} :catch_bd

    if-ltz v8, :cond_7a

    const/4 v3, 0x1

    :cond_7a
    :goto_7a
    if-eqz v4, :cond_c3

    :goto_7c
    return v3

    :catch_7d
    move-exception v1

    const/4 v4, 0x0

    :try_start_7f
    const-string/jumbo v8, "AfterimageCompensationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NumberFormatException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_99} :catch_9a

    goto :goto_4c

    :catch_9a
    move-exception v0

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    :catch_a0
    move-exception v1

    const/4 v3, 0x0

    :try_start_a2
    const-string/jumbo v8, "AfterimageCompensationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NumberFormatException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_bc} :catch_bd

    goto :goto_7a

    :catch_bd
    move-exception v0

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7a

    :cond_c3
    move v3, v7

    goto :goto_7c
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v12, 0x80

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x80

    new-array v1, v12, [B

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v12, :cond_12

    aput-byte v11, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_12
    :try_start_12
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_73
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_44
    .catchall {:try_start_12 .. :try_end_1c} :catchall_9f

    if-eqz v7, :cond_32

    :try_start_1e
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eqz v8, :cond_2f

    new-instance v10, Ljava/lang/String;

    add-int/lit8 v11, v8, -0x1

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v13, 0x0

    invoke-direct {v10, v1, v13, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v9, v10

    :cond_2f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_32} :catch_b4
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_32} :catch_b7
    .catchall {:try_start_1e .. :try_end_32} :catchall_b1

    :cond_32
    if-eqz v7, :cond_37

    :try_start_34
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_39

    :cond_37
    :goto_37
    move-object v6, v7

    :cond_38
    :goto_38
    return-object v9

    :catch_39
    move-exception v3

    const-string/jumbo v11, "AfterimageCompensationService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :catch_44
    move-exception v2

    :goto_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v11, "AfterimageCompensationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_45 .. :try_end_62} :catchall_9f

    if-eqz v6, :cond_38

    :try_start_64
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_38

    :catch_68
    move-exception v3

    const-string/jumbo v11, "AfterimageCompensationService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_73
    move-exception v4

    :goto_74
    :try_start_74
    const-string/jumbo v11, "AfterimageCompensationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileNotFoundException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_74 .. :try_end_8e} :catchall_9f

    if-eqz v6, :cond_38

    :try_start_90
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_38

    :catch_94
    move-exception v3

    const-string/jumbo v11, "AfterimageCompensationService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catchall_9f
    move-exception v11

    :goto_a0
    if-eqz v6, :cond_a5

    :try_start_a2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6

    :cond_a5
    :goto_a5
    throw v11

    :catch_a6
    move-exception v3

    const-string/jumbo v12, "AfterimageCompensationService"

    const-string/jumbo v13, "File Close error"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    :catchall_b1
    move-exception v11

    move-object v6, v7

    goto :goto_a0

    :catch_b4
    move-exception v4

    move-object v6, v7

    goto :goto_74

    :catch_b7
    move-exception v2

    move-object v6, v7

    goto :goto_45
.end method

.method private initLoggingData()V
    .registers 13

    const/16 v11, 0xc

    const/4 v10, 0x1

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v2, 0x0

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/efs/afc/logging_data"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getAfcLoggingData()Z

    move-result v4

    if-eqz v4, :cond_43

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-ltz v4, :cond_43

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-gt v4, v9, :cond_43

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    if-ltz v4, :cond_43

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    const v5, 0x10c8e0

    if-gt v4, v5, :cond_43

    iput-boolean v10, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    int-to-double v4, v4

    iput-wide v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    const/4 v2, 0x0

    :goto_35
    if-ge v2, v11, :cond_43

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v5, v5, v2

    int-to-double v6, v5

    aput-wide v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_43
    const-string/jumbo v4, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mLogginFileExist =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mAfcState - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", interpolationCount - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mAfcLoggingDataValid - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    if-nez v4, :cond_98

    iput v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    iput v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    iput v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    const/4 v2, 0x0

    :goto_8f
    if-ge v2, v11, :cond_98

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aput v8, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    :cond_98
    const-string/jumbo v4, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAfcState - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", interpolationCount - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-ge v4, v9, :cond_109

    iput-boolean v10, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    :goto_c7
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    if-eqz v4, :cond_108

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-lez v4, :cond_108

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-gt v4, v9, :cond_108

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/efs/afc/afc_data"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_108

    :try_start_e1
    const-string/jumbo v4, "/efs/afc/afc_data"

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AFC registe data is - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "/sys/class/mdnie/mdnie/afc"

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_108} :catch_126

    :cond_108
    :goto_108
    return-void

    :cond_109
    const-string/jumbo v4, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAfcState is already done - mAfcState - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    :catch_126
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_108
.end method

.method private makeInitEfsFile()V
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/efs/afc/display_on_time"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo v0, "/efs/afc/display_on_time"

    const-string/jumbo v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "AfterimageCompensationService"

    const-string/jumbo v1, "Init AFC_DISPLAY_ON_TIME EFS"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method private static readStrFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :try_start_4
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_9} :catch_aa
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_5d
    .catchall {:try_start_4 .. :try_end_9} :catchall_f9

    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_14a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_153
    .catchall {:try_start_9 .. :try_end_e} :catchall_143

    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_11} :catch_14e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_157
    .catchall {:try_start_e .. :try_end_11} :catchall_146

    move-result-object v7

    if-eqz v1, :cond_17

    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_1f

    :cond_17
    :goto_17
    if-eqz v6, :cond_1c

    :try_start_19
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_3e

    :cond_1c
    :goto_1c
    move-object v0, v1

    move-object v5, v6

    :cond_1e
    :goto_1e
    return-object v7

    :catch_1f
    move-exception v3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BufferedReader Close IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_17

    :catch_3e
    move-exception v3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FileReader Close IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1c

    :catch_5d
    move-exception v3

    :goto_5e
    :try_start_5e
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_f9

    if-eqz v0, :cond_66

    :try_start_63
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_8b

    :cond_66
    :goto_66
    if-eqz v5, :cond_1e

    :try_start_68
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_1e

    :catch_6c
    move-exception v3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FileReader Close IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1e

    :catch_8b
    move-exception v3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BufferedReader Close IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_66

    :catch_aa
    move-exception v2

    :goto_ab
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_f9

    if-eqz v0, :cond_b3

    :try_start_b0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_da

    :cond_b3
    :goto_b3
    if-eqz v5, :cond_1e

    :try_start_b5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_ba

    goto/16 :goto_1e

    :catch_ba
    move-exception v3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FileReader Close IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1e

    :catch_da
    move-exception v3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BufferedReader Close IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b3

    :catchall_f9
    move-exception v8

    :goto_fa
    if-eqz v0, :cond_ff

    :try_start_fc
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_105

    :cond_ff
    :goto_ff
    if-eqz v5, :cond_104

    :try_start_101
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_124

    :cond_104
    :goto_104
    throw v8

    :catch_105
    move-exception v3

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BufferedReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_ff

    :catch_124
    move-exception v3

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FileReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_104

    :catchall_143
    move-exception v8

    move-object v5, v6

    goto :goto_fa

    :catchall_146
    move-exception v8

    move-object v0, v1

    move-object v5, v6

    goto :goto_fa

    :catch_14a
    move-exception v2

    move-object v5, v6

    goto/16 :goto_ab

    :catch_14e
    move-exception v2

    move-object v0, v1

    move-object v5, v6

    goto/16 :goto_ab

    :catch_153
    move-exception v3

    move-object v5, v6

    goto/16 :goto_5e

    :catch_157
    move-exception v3

    move-object v0, v1

    move-object v5, v6

    goto/16 :goto_5e
.end method

.method private receive_screen_off_intent()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    return-void
.end method

.method private receive_screen_on_intent()V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->notify()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_15

    monitor-exit v1

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private update_check_panel_id()V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string/jumbo v3, "AfterimageCompensationService"

    const-string/jumbo v4, "update_cell_id() function call"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_b
    const-string/jumbo v3, "/sys/class/lcd/panel/cell_id"

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_115

    move-result-object v1

    :goto_12
    const-string/jumbo v3, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USER_PANEL_INFO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/efs/afc/cell_id"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_157

    :try_start_3a
    const-string/jumbo v3, "/efs/afc/cell_id"

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EFS_PANEL_INFO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5b} :catch_11b

    :goto_5b
    if-eqz v0, :cond_121

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_121

    const-string/jumbo v3, "AfterimageCompensationService"

    const-string/jumbo v4, "EFS_PANEL_INFO , USER_PANEL_INFO Diff O"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "/efs/afc/cell_id"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9c

    const-string/jumbo v3, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fileWriteString success_1 USER_PANEL_INFO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , EFS_PANEL_INFO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/efs/afc/afc_data"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c1

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/efs/afc/afc_data"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_c1

    const-string/jumbo v3, "AfterimageCompensationService"

    const-string/jumbo v4, "AFC_REG_DATA.delete() success"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c1
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/efs/afc/logging_data"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e6

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/efs/afc/logging_data"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_e6

    const-string/jumbo v3, "AfterimageCompensationService"

    const-string/jumbo v4, "AFC_LOGGING_DATA.delete() success"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/efs/afc/display_on_time"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_114

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/efs/afc/display_on_time"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_114

    const-string/jumbo v3, "/efs/afc/display_on_time"

    const-string/jumbo v4, "0"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v3, "AfterimageCompensationService"

    const-string/jumbo v4, "AFC_DISPLAY_ON_TIME.delete() success"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_114
    :goto_114
    return-void

    :catch_115
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    :catch_11b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5b

    :cond_121
    if-nez v0, :cond_14d

    const-string/jumbo v3, "AfterimageCompensationService"

    const-string/jumbo v4, "EFS_PANEL_INFO value is NULL"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "/efs/afc/cell_id"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v3, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UPDATE EFS_PANEL_INFO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    :cond_14d
    const-string/jumbo v3, "AfterimageCompensationService"

    const-string/jumbo v4, "EFS_PANEL_INFO , USER_PANEL_INFO Diff X"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    :cond_157
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/efs/afc/cell_id"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_114

    const-string/jumbo v3, "/efs/afc/cell_id"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_114

    const-string/jumbo v3, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fileWriteString success_2 USER_PANEL_INFO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , EFS_PANEL_INFO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114
.end method

.method private writeLoggingDataEfs()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_21
    const/16 v2, 0xc

    if-ge v1, v2, :cond_35

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_35
    const-string/jumbo v2, "AfterimageCompensationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AFC Loggin Data - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "/efs/afc/logging_data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
