.class Lcom/android/systemui/statusbar/policy/EthernetIcons;
.super Ljava/lang/Object;
.source "EthernetIcons.java"


# static fields
.field static final ETHERNET_ICONS:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const v2, 0x7f080632

    aput v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const v2, 0x7f080633

    aput v2, v1, v3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/EthernetIcons;->ETHERNET_ICONS:[[I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
