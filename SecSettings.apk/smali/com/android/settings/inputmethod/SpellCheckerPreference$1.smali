.class Lcom/android/settings/inputmethod/SpellCheckerPreference$1;
.super Ljava/lang/Object;
.source "SpellCheckerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/SpellCheckerPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/SpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckerPreference;

    invoke-static {v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->-wrap0(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V

    return-void
.end method
