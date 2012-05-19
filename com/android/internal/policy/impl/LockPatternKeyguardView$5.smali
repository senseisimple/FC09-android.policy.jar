.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onBatteryLowWarn(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 813
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 816
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->verifyUnlock()V

    .line 817
    :cond_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLowBatteryDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 818
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLowBatteryDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 820
    :cond_29
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 821
    return-void
.end method
