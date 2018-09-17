.class Lcom/android/server/input/InputManagerService$11;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHasSeenDeviceSpecificLayout:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$enabledLayoutDescriptors:[Ljava/lang/String;

.field final synthetic val$enabledLayouts:Ljava/util/ArrayList;

.field final synthetic val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

.field final synthetic val$potentialLayouts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$11;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$11;->val$enabledLayoutDescriptors:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$11;->val$enabledLayouts:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/input/InputManagerService$11;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    iput-object p5, p0, Lcom/android/server/input/InputManagerService$11;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 10

    const/4 v5, -0x1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$11;->val$enabledLayoutDescriptors:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_5
    if-ge v1, v3, :cond_1e

    aget-object v0, v2, v1

    if-eqz v0, :cond_1b

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$11;->val$enabledLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1e
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$11;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v2

    if-ne v1, v2, :cond_48

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$11;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v2

    if-ne v1, v2, :cond_48

    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService$11;->mHasSeenDeviceSpecificLayout:Z

    if-nez v1, :cond_42

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService$11;->mHasSeenDeviceSpecificLayout:Z

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$11;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_42
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$11;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    :goto_47
    return-void

    :cond_48
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v1

    if-ne v1, v5, :cond_47

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v1

    if-ne v1, v5, :cond_47

    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService$11;->mHasSeenDeviceSpecificLayout:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$11;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47
.end method
