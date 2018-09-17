.class final Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
.super Ljava/lang/Object;
.source "HdmiMhlLocalDeviceStub.java"


# static fields
.field private static final INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;


# instance fields
.field private final mPortId:I

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, -0x1

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    const v1, 0xffff

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIII)V

    sput-object v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mPortId:I

    return-void
.end method


# virtual methods
.method getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2

    sget-object v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method getPortId()I
    .registers 2

    iget v0, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mPortId:I

    return v0
.end method

.method onBusOvercurrentDetected(Z)V
    .registers 2

    return-void
.end method

.method onDeviceRemoved()V
    .registers 1

    return-void
.end method

.method sendKeyEvent(IZ)V
    .registers 3

    return-void
.end method

.method sendStandby()V
    .registers 1

    return-void
.end method

.method setBusMode(I)V
    .registers 2

    return-void
.end method

.method setDeviceStatusChange(II)V
    .registers 3

    return-void
.end method

.method turnOn(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    return-void
.end method
