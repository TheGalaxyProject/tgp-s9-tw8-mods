.class Landroid/support/v14/preference/SwitchPreference$Listener;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v14/preference/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method private constructor <init>(Landroid/support/v14/preference/SwitchPreference;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v14/preference/SwitchPreference$Listener;->this$0:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v14/preference/SwitchPreference;Landroid/support/v14/preference/SwitchPreference$Listener;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference$Listener;-><init>(Landroid/support/v14/preference/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v14/preference/SwitchPreference$Listener;->this$0:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    :cond_12
    iget-object v0, p0, Landroid/support/v14/preference/SwitchPreference$Listener;->this$0:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
