.class final enum Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;
.super Ljava/lang/Enum;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMirrorLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LATEST_UEVENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

.field public static final enum RELEASE:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

.field public static final enum START:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

.field public static final enum START_NCM_CALLED:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->START:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    new-instance v0, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    const-string/jumbo v1, "START_NCM_CALLED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->START_NCM_CALLED:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    new-instance v0, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    const-string/jumbo v1, "RELEASE"

    invoke-direct {v0, v1, v4}, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->RELEASE:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    sget-object v1, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->START:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->START_NCM_CALLED:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->RELEASE:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->$VALUES:[Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;
    .registers 2

    const-class v0, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    return-object v0
.end method

.method public static values()[Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;
    .registers 1

    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->$VALUES:[Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    return-object v0
.end method