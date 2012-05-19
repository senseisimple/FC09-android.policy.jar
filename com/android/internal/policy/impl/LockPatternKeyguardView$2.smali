.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;
.super Landroid/os/Handler;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 2
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 288
    :goto_5
    return-void

    .line 285
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->handleCheckMissedMessage(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V

    goto :goto_5

    .line 283
    :pswitch_data_e
    .packed-switch 0x3e8
        :pswitch_6
    .end packed-switch
.end method
