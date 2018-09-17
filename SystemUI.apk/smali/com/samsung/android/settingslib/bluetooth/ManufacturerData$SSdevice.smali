.class public Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;
.super Ljava/lang/Object;
.source "ManufacturerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSdevice"
.end annotation


# instance fields
.field public final ACCESSORY:B

.field public final AIRPURIFIER:B

.field public final AV:B

.field public final BAND:B

.field public final BD:B

.field public final CAMCORDER:B

.field public final CAMERA:B

.field public final COOKTOP:B

.field public final DISHWASHER:B

.field public final DRYER:B

.field public final EBOARD:B

.field public final FLOOR_AC:B

.field public final HEADPHONE:B

.field public final HOOD:B

.field public final IOT:B

.field public final KIMCHI_REFRIGERATOR:B

.field public final MICROWAVEOVEN:B

.field public final MONITOR:B

.field public final OVEN:B

.field public final PC:B

.field public final PHONE:B

.field public final PRINTER:B

.field public final RANGE:B

.field public final REFRIGERATOR:B

.field public final ROBOT_VACUUM:B

.field public final ROOM_AC:B

.field public final ROUTER:B

.field public final SIGNAGE:B

.field public final SMART_HOME:B

.field public final SPEAKER:B

.field public final SYSTEM_AC:B

.field public final TABLET:B

.field public final TV:B

.field public final WASHER:B

.field public final WATCH:B

.field public final WEARABLE:B

.field private final mCategoryPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V
    .registers 11

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->PHONE:B

    iput-byte v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->TABLET:B

    iput-byte v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->WEARABLE:B

    iput-byte v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->PC:B

    iput-byte v8, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->ACCESSORY:B

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->TV:B

    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->AV:B

    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->SIGNAGE:B

    const/16 v0, 0x9

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->REFRIGERATOR:B

    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->WASHER:B

    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->DRYER:B

    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->FLOOR_AC:B

    const/16 v0, 0xd

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->ROOM_AC:B

    const/16 v0, 0xe

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->SYSTEM_AC:B

    const/16 v0, 0xf

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->AIRPURIFIER:B

    const/16 v0, 0x10

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->OVEN:B

    const/16 v0, 0x11

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->RANGE:B

    const/16 v0, 0x12

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->ROBOT_VACUUM:B

    const/16 v0, 0x13

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->SMART_HOME:B

    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->PRINTER:B

    const/16 v0, 0x15

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->HEADPHONE:B

    const/16 v0, 0x16

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->SPEAKER:B

    const/16 v0, 0x17

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->MONITOR:B

    const/16 v0, 0x18

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->EBOARD:B

    const/16 v0, 0x19

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->IOT:B

    const/16 v0, 0x1a

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->CAMERA:B

    const/16 v0, 0x1b

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->CAMCORDER:B

    const/16 v0, 0x1c

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->COOKTOP:B

    const/16 v0, 0x1d

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->DISHWASHER:B

    const/16 v0, 0x1e

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->MICROWAVEOVEN:B

    const/16 v0, 0x1f

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->HOOD:B

    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->KIMCHI_REFRIGERATOR:B

    const/16 v0, 0x21

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->WATCH:B

    const/16 v0, 0x22

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->BAND:B

    const/16 v0, 0x23

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->ROUTER:B

    const/16 v0, 0x24

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->BD:B

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x24

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[Phone] "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Tablet] "

    aput-object v2, v1, v4

    const-string/jumbo v2, "[Wearable] "

    aput-object v2, v1, v5

    const-string/jumbo v2, "[PC] "

    aput-object v2, v1, v6

    const-string/jumbo v2, "[Accessory] "

    aput-object v2, v1, v7

    const-string/jumbo v2, "[TV] "

    aput-object v2, v1, v8

    const-string/jumbo v2, "[AV] "

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Signage] "

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Refrigerator] "

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Washer] "

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Dryer] "

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Floor A/C] "

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Room A/C] "

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "[System A/C] "

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Air Purifier] "

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Oven] "

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Range] "

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Robot Vacuum] "

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Smart Home] "

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Printer] "

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Headphone] "

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Speaker] "

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Monitor] "

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "[E-Board] "

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "[IoT] "

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Camera] "

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Camcorder] "

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Cooktop] "

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Dish Washer] "

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Microwave Oven] "

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Hood] "

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "[KimchiRef] "

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Watch] "

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Band] "

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string/jumbo v2, "[Router] "

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string/jumbo v2, "[BD] "

    const/16 v3, 0x23

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->mCategoryPrefixList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCategoryPrefix(B)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, ""

    if-lez p1, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->mCategoryPrefixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    if-le v1, v2, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->mCategoryPrefixList:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_19
    return-object v0
.end method

.method public getDeviceIcon(BB)I
    .registers 4

    packed-switch p1, :pswitch_data_a4

    const/4 v0, 0x0

    return v0

    :pswitch_5
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    return v0

    :pswitch_8
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_tablet:I

    return v0

    :pswitch_b
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return v0

    :pswitch_e
    packed-switch p2, :pswitch_data_f0

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return v0

    :pswitch_14
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_pc:I

    return v0

    :pswitch_17
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return v0

    :pswitch_1a
    packed-switch p2, :pswitch_data_f8

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_accessory_default:I

    return v0

    :pswitch_20
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_mouse:I

    return v0

    :pswitch_23
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_game_device:I

    return v0

    :pswitch_26
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_keyboard:I

    return v0

    :pswitch_29
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return v0

    :pswitch_2c
    packed-switch p2, :pswitch_data_102

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return v0

    :pswitch_32
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_soundbar:I

    return v0

    :pswitch_35
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_av360r7:I

    return v0

    :pswitch_38
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return v0

    :pswitch_3b
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_signage:I

    return v0

    :pswitch_3e
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_refrigerator:I

    return v0

    :pswitch_41
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_washer:I

    return v0

    :pswitch_44
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_dryer:I

    return v0

    :pswitch_47
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_floor_airconditioner:I

    return v0

    :pswitch_4a
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_airconditioner:I

    return v0

    :pswitch_4d
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_system_airconditioner:I

    return v0

    :pswitch_50
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_air_purifier:I

    return v0

    :pswitch_53
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_oven:I

    return v0

    :pswitch_56
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_range:I

    return v0

    :pswitch_59
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_cleaner:I

    return v0

    :pswitch_5c
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_smart_home:I

    return v0

    :pswitch_5f
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_printer:I

    return v0

    :pswitch_62
    packed-switch p2, :pswitch_data_10c

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_headset:I

    return v0

    :pswitch_68
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_headset:I

    return v0

    :pswitch_6b
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_mono_headset:I

    return v0

    :pswitch_6e
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_iconx:I

    return v0

    :pswitch_71
    packed-switch p2, :pswitch_data_116

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return v0

    :pswitch_77
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return v0

    :pswitch_7a
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return v0

    :pswitch_7d
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_eboard:I

    return v0

    :pswitch_80
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_samsung_connect:I

    return v0

    :pswitch_83
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_camera:I

    return v0

    :pswitch_86
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_camcoder:I

    return v0

    :pswitch_89
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_cooktop:I

    return v0

    :pswitch_8c
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_dishwasher:I

    return v0

    :pswitch_8f
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_microwaveoven:I

    return v0

    :pswitch_92
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_hood:I

    return v0

    :pswitch_95
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_kimchi_refrigerator:I

    return v0

    :pswitch_98
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return v0

    :pswitch_9b
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_band:I

    return v0

    :pswitch_9e
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_router:I

    return v0

    :pswitch_a1
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_blueray_player:I

    return v0

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_1a
        :pswitch_29
        :pswitch_2c
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_44
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
        :pswitch_71
        :pswitch_7a
        :pswitch_7d
        :pswitch_80
        :pswitch_83
        :pswitch_86
        :pswitch_89
        :pswitch_8c
        :pswitch_8f
        :pswitch_92
        :pswitch_95
        :pswitch_98
        :pswitch_9b
        :pswitch_9e
        :pswitch_a1
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_17
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_20
        :pswitch_23
        :pswitch_26
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_32
        :pswitch_35
        :pswitch_38
    .end packed-switch

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_68
        :pswitch_6b
        :pswitch_6e
    .end packed-switch

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_77
    .end packed-switch
.end method
