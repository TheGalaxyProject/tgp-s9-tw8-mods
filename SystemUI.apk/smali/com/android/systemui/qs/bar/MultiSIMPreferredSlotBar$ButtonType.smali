.class final enum Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;
.super Ljava/lang/Enum;
.source "MultiSIMPreferredSlotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

.field public static final enum DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

.field public static final enum SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

.field public static final enum VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    const-string/jumbo v1, "VOICE"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    new-instance v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    const-string/jumbo v1, "SMS"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    new-instance v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    const-string/jumbo v1, "DATA"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->$VALUES:[Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;
    .registers 2

    const-class v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;
    .registers 1

    sget-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->$VALUES:[Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    return-object v0
.end method
